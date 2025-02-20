const express = require('express');
const cors = require('cors');
const mysql = require('mysql');
const net = require('net');
const WebSocket = require('ws');

const app = express();
const port = 3001; // Port for the Express server

// MySQL database connection
const db = mysql.createConnection({
    host: 'ec2-3-8-166-39.eu-west-2.compute.amazonaws.com',
    user: 'flamingo',
    password: 'Flamingo2024',
    database: 'RobotData'
});

db.connect((err) => {
    if (err) {
        console.error('Error connecting to MySQL:', err);
        return;
    }
    console.log('Connected to MySQL');
});

app.use(cors()); // Enable CORS for all routes
app.use(express.json());

console.log('Server is starting...');

// Endpoint to get session IDs
app.get('/sessions', (req, res) => {
    const query = 'SELECT sessionID, robotID FROM Sessions ORDER BY sessionID DESC';

    db.query(query, (err, results) => {
        if (err) {
            console.error('Error fetching sessions:', err);
            return res.status(500).send('Error fetching sessions');
        }
        console.log('Fetched sessions:', results);
        res.json(results);
    });
});

// Endpoint to get replay data based on sessionID
app.get('/replay-data', (req, res) => {
    console.log('Fetching replay data...');
    const { sessionID } = req.query;
    if (!sessionID) {
        return res.status(400).send('Session ID is required');
    }

    const query = `
        SELECT datapoint_time, x_position AS x, y_position AS y, 
               battery_voltage AS battery, regulator_voltage AS regulator, 
               logic_current AS logic, motor_current AS motors
        FROM DataPoints
        WHERE sessionID = ?
        ORDER BY datapoint_time;
    `;

    db.query(query, [sessionID], (err, results) => {
        if (err) {
            console.error('Error fetching replay data:', err);
            return res.status(500).send('Error fetching replay data');
        }
        console.log('Fetched replay data:', results);
        res.json(results);
    });
});

// Raspberry Pi TCP server details
const raspberryPiHost = '192.168.137.14';
const raspberryPiPort = 3001;

// WebSocket server instance
let wss;

// Endpoint to send integer codes to Raspberry Pi
app.post('/send-code', (req, res) => {
    const { code } = req.body;
    console.log(`Received code to send: ${code}`);
    
    const client = new net.Socket();
    client.connect(raspberryPiPort, raspberryPiHost, () => {
        console.log('Connected to Raspberry Pi');
        
        // Create a buffer and write the integer code as a byte
        const buffer = Buffer.alloc(1);
        buffer.writeUInt8(code);
        
        client.write(buffer);
        console.log(`Sent code ${code} to Raspberry Pi`);
        res.sendStatus(200); // Respond to the frontend immediately
    });

    client.on('data', (data) => {
        console.log('Received data from Raspberry Pi');
        
        // Parse the received data
        const battery = data.readInt32LE(0);
        const logic = data.readInt32LE(4);
        const motors = data.readInt32LE(8);
        const regulator = data.readInt32LE(12);
        const x = data.readInt32LE(16);
        const y = data.readInt32LE(20);

        // Check for termination packet
        if (battery === 65535 && logic === 65535 && motors === 65535 && regulator === 65535 && x === 65535 && y === 65535) {
            console.log('Received termination packet. Destroying connection.');
            client.destroy(); // kill client after server's response
            console.log('Client connection destroyed');
            return;
        }

        // Create a JSON packet to send over WebSocket
        const packet = { battery, logic, motors, regulator, x, y };

        // Send data to all connected WebSocket clients
        if (wss) {
            wss.clients.forEach(ws => {
                if (ws.readyState === WebSocket.OPEN) {
                    ws.send(JSON.stringify(packet));
                }
            });
        }
    });

    client.on('close', () => {
        console.log('Connection to Raspberry Pi closed');
    });

    client.on('error', (err) => {
        console.error('Connection error: ', err);
    });

    // Start WebSocket server if it's not already started
    if (!wss) {
        wss = new WebSocket.Server({ port: 3002 });
        console.log(`WebSocket Server running on ws://localhost:3002`);

        wss.on('connection', ws => {
            console.log('WebSocket client connected');
            
            ws.on('close', () => {
                console.log('WebSocket client disconnected');
            });
        });
    }
});

app.listen(port, () => {
    console.log(`HTTP Server running on http://localhost:${port}`);
});
