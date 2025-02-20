import React, { useEffect, useRef, useState, useCallback } from 'react';
import { Line } from 'react-chartjs-2';
import { Chart, LineElement, PointElement, LinearScale, CategoryScale, Title, Tooltip, Legend, TimeScale } from 'chart.js';
import 'chartjs-adapter-date-fns';
import './Robot.css';

// Register Chart.js components
Chart.register(LineElement, PointElement, LinearScale, CategoryScale, Title, Tooltip, Legend, TimeScale);

const CELLS = 12;
const SIZE = 11733.154; // Assuming 12 bits ADC
const current_scale_logic = 3.0 / SIZE;
const current_scale_motors = 2.0 / SIZE;
const threshold_logic = 2.6;
const threshold_motors = 1.8;
const voltage_scale = 1.1 / SIZE;
const voltage_gain_battery = 1.125 / 18;
const voltage_gain_motors = 1.132 / 6;

const discharge_plot = {
  1.50: 100, 1.49: 99, 1.48: 98, 1.47: 97, 1.46: 96, 1.45: 95, 1.44: 94,
  1.43: 93, 1.42: 92, 1.41: 91, 1.40: 90, 1.39: 89, 1.38: 88, 1.37: 87,
  1.36: 86, 1.35: 85, 1.34: 84, 1.33: 83, 1.32: 82, 1.31: 81, 1.30: 80,
  1.29: 79, 1.28: 78, 1.27: 77, 1.26: 76, 1.25: 75, 1.24: 74, 1.23: 73,
  1.22: 72, 1.21: 71, 1.20: 70, 1.19: 69, 1.18: 68, 1.17: 67, 1.16: 66,
  1.15: 65, 1.14: 64, 1.13: 63, 1.12: 62, 1.11: 61, 1.10: 60, 1.09: 59,
  1.08: 58, 1.07: 57, 1.06: 56, 1.05: 55, 1.04: 54, 1.03: 53, 1.02: 52,
  1.01: 51, 1.00: 50, 0.99: 49, 0.98: 48, 0.97: 47, 0.96: 46, 0.95: 45,
  0.94: 44, 0.93: 43, 0.92: 42, 0.91: 41, 0.90: 40, 0.89: 39, 0.88: 38,
  0.87: 37, 0.86: 36, 0.85: 35, 0.84: 34, 0.83: 33, 0.82: 32, 0.81: 31,
  0.80: 30, 0.79: 29, 0.78: 28, 0.77: 27, 0.76: 26, 0.75: 25, 0.74: 24,
  0.73: 23, 0.72: 22, 0.71: 21, 0.70: 20, 0.69: 19, 0.68: 18, 0.67: 17,
  0.66: 16, 0.65: 15, 0.64: 14, 0.63: 13, 0.62: 12, 0.61: 11, 0.60: 10,
  0.59: 9, 0.58: 8, 0.57: 7, 0.56: 6, 0.55: 5, 0.54: 4, 0.53: 3, 0.52: 2,
  0.51: 1, 0.50: 0
};

const calculateBatteryPercentage = (cell_voltage) => {
  let closest_voltage = 1.5;

  for (let voltage in discharge_plot) {
    if (Math.abs(voltage - cell_voltage) < Math.abs(closest_voltage - cell_voltage)) {
      closest_voltage = voltage;
    }
  }

  return discharge_plot[closest_voltage];
};

const LiveRobot = ({ goHome }) => {
  const canvasRef = useRef(null);
  const [data, setData] = useState({
    logicCurrent: [],
    motorCurrent: [],
    logicPower: [],
    motorPower: [],
    batteryVoltage: [],
    regulatorVoltage: [],
  });
  const [path, setPath] = useState([]);
  const [timestamps, setTimestamps] = useState([]);
  const [batteryVoltage, setBatteryVoltage] = useState(null);
  const [cellVoltage, setCellVoltage] = useState(null);
  const [batteryPercentage, setBatteryPercentage] = useState(null);
  const [regulatorVoltage, setRegulatorVoltage] = useState(null);
  const [logicOverload, setLogicOverload] = useState(false);
  const [motorOverload, setMotorOverload] = useState(false);

  useEffect(() => {
    const ws = new WebSocket('ws://localhost:3002');

    ws.onopen = () => {
      console.log('Connected to WebSocket server');
    };

    ws.onmessage = (event) => {
      const packet = JSON.parse(event.data);
      console.log('Received data:', packet);

      // Perform the calculations here using the received packet data
      const logicCurrent = packet.logic * current_scale_logic;
      const motorCurrent = packet.motors * current_scale_motors;
      const regulatorVoltage = packet.regulator * voltage_scale / voltage_gain_motors;
      const batteryVoltage = packet.battery * voltage_scale / voltage_gain_battery;
      const logicPower = logicCurrent * regulatorVoltage;
      const motorPower = motorCurrent * batteryVoltage;

      const cellVoltage = batteryVoltage / CELLS;
      const batteryPercentage = calculateBatteryPercentage(cellVoltage);

      setLogicOverload(logicCurrent > threshold_logic);
      setMotorOverload(motorCurrent > threshold_motors);

      setTimestamps(prevTimestamps => [...prevTimestamps, new Date()]);
      setData(prevData => ({
        logicCurrent: [...prevData.logicCurrent, { x: new Date(), y: logicCurrent }],
        motorCurrent: [...prevData.motorCurrent, { x: new Date(), y: motorCurrent }],
        logicPower: [...prevData.logicPower, { x: new Date(), y: logicPower }],
        motorPower: [...prevData.motorPower, { x: new Date(), y: motorPower }],
        batteryVoltage: [...prevData.batteryVoltage, { x: new Date(), y: batteryVoltage }],
        regulatorVoltage: [...prevData.regulatorVoltage, { x: new Date(), y: regulatorVoltage }],
      }));
      setPath(prevPath => [...prevPath, { x: packet.x, y: packet.y }]);

      setBatteryVoltage(batteryVoltage);
      setCellVoltage(cellVoltage);
      setBatteryPercentage(batteryPercentage);
      setRegulatorVoltage(regulatorVoltage);

      // Check for termination packet
      if (packet.battery === 12000 && packet.logic === 12000 && packet.motors === 12000 && packet.regulator === 12000 && packet.x === 12000 && packet.y === 12000) {
        alert('Flamingo Finished its Task!');
        goHome();
      }
    };

    ws.onclose = () => {
      console.log('Disconnected from WebSocket server');
    };

    return () => {
      ws.close();
    };
  }, [goHome]);

  const drawPath = useCallback(() => {
    const canvas = canvasRef.current;
    const ctx = canvas.getContext('2d');
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    ctx.strokeStyle = 'pink';
    ctx.beginPath();
    path.forEach((point, index) => {
      if (index === 0) {
        ctx.moveTo(point.x, point.y);
      } else {
        ctx.lineTo(point.x, point.y);
      }
    });
    ctx.stroke();
  }, [path]);

  useEffect(() => {
    drawPath();
  }, [path, drawPath]);

  const chartOptions = {
    responsive: true,
    maintainAspectRatio: false,
    scales: {
      x: { type: 'time', time: { unit: 'second' } },
      y: { beginAtZero: true },
    },
  };

  const createChartData = (label, data, color) => ({
    labels: data.map(d => d.x),
    datasets: [
      {
        label,
        data: data.map(d => d.y),
        fill: false,
        backgroundColor: color,
        borderColor: color,
      },
    ],
  });

  return (
    <div className="Robot">
      <div className="title">
        <h1>{`${new Date().toLocaleString()} - Robot1`}</h1>
        <button className="home-button" onClick={goHome}>Home</button>
      </div>
      <div className="content">
        <div className="map">
          <canvas ref={canvasRef} width="400" height="400" className="map-canvas" />
        </div>
        <div className="battery-info">
          <div className="charts">
            <div className="chart">
              <Line data={createChartData('Logic Current Draw', data.logicCurrent, 'rgba(138, 43, 226, 1)')} options={chartOptions} />
            </div>
            <div className="chart">
              <Line data={createChartData('Motor Current Draw', data.motorCurrent, 'rgba(138, 43, 226, 1)')} options={chartOptions} />
            </div>
            <div className="chart">
              <Line data={createChartData('Logic Power Dissipation', data.logicPower, 'rgba(34, 100, 34, 1)')} options={chartOptions} />
            </div>
            <div className="chart">
              <Line data={createChartData('Motor Power Dissipation', data.motorPower, 'rgba(34, 100, 34, 1)')} options={chartOptions} />
            </div>
            <div className="chart">
              <Line data={createChartData('Regulator Voltage', data.regulatorVoltage, 'rgba(232, 131, 8)')} options={chartOptions} />
            </div>
            <div className="chart">
              <Line data={createChartData('Battery Voltage', data.batteryVoltage, 'rgba(232, 131, 8)')} options={chartOptions} />
            </div>
          </div>
          <div className="data-readings">
            <div className="column">
              <p>Battery voltage: {batteryVoltage !== null ? batteryVoltage.toFixed(2) : 'N/A'} V</p>
              <p>Cell voltage: {cellVoltage !== null ? cellVoltage.toFixed(2) : 'N/A'} V</p>
              <p>Battery charge: {batteryPercentage !== null ? batteryPercentage : 'N/A'} %</p>
            </div>
            <div className="column">
              <p>Regulator voltage: {regulatorVoltage !== null ? regulatorVoltage.toFixed(2) : 'N/A'} V</p>
              <p>Logic overload detected: {logicOverload ? 'TRUE' : 'FALSE'}</p>
              <p>Motor overload detected: {motorOverload ? 'TRUE' : 'FALSE'}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default LiveRobot;
