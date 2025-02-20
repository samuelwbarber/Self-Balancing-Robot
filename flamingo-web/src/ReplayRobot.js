import React, { useEffect, useRef, useState } from 'react';
import { Line } from 'react-chartjs-2';
import { Chart, LineElement, PointElement, LinearScale, CategoryScale, Title, Tooltip, Legend } from 'chart.js';
import axios from 'axios';
import './Robot.css';

// Register Chart.js components
Chart.register(LineElement, PointElement, LinearScale, CategoryScale, Title, Tooltip, Legend);

const dischargePlot = {
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

const ReplayRobot = ({ replayDetails, goHome }) => {
  const canvasRef = useRef(null);
  const [data, setData] = useState({
    logicCurrent: [],
    motorCurrent: [],
    logicPower: [],
    motorPower: [],
    batteryVoltage: [],
    regulatorVoltage: [],
  });
  const [timestamps, setTimestamps] = useState([]);
  const [batteryPercentages, setBatteryPercentages] = useState([]);
  const [xPositions, setXPositions] = useState([]);
  const [yPositions, setYPositions] = useState([]);
  const [logicOverload, setLogicOverload] = useState(false);
  const [motorOverload, setMotorOverload] = useState(false);

  useEffect(() => {
    if (replayDetails) {
      console.log('Requesting replay data for sessionID:', replayDetails);
      axios.get(`http://localhost:3001/replay-data?sessionID=${replayDetails}`)
        .then(response => {
          const replayData = response.data;
          console.log('Received replay data:', replayData);
          const logicCurrent = [];
          const motorCurrent = [];
          const logicPower = [];
          const motorPower = [];
          const batteryVoltage = [];
          const regulatorVoltage = [];
          const timestamps = [];
          const xPositions = [];
          const yPositions = [];
          const batteryPercentages = [];
          
          replayData.forEach(point => {
            const voltageScale = 1.1 / 65535.0;
            const currentScaleLogic = 3000.0 / 65535.0;
            const currentScaleMotors = 2000.0 / 65535.0;
            const voltageGainBattery = 1.1 / 6;
            const voltageGainRegulator = 1.1 / 18;

            const batteryVoltagePoint = point.battery * voltageScale / voltageGainBattery;
            const regulatorVoltagePoint = point.regulator * voltageScale / voltageGainRegulator;
            const logicCurrentPoint = point.logic * currentScaleLogic;
            const motorCurrentPoint = point.motors * currentScaleMotors;
            const logicPowerPoint = logicCurrentPoint * batteryVoltagePoint;
            const motorPowerPoint = motorCurrentPoint * regulatorVoltagePoint;

            const cellVoltage = batteryVoltagePoint / 12;
            let closestVoltage = 1.5;
            for (let voltage in dischargePlot) {
              if (Math.abs(voltage - cellVoltage) < Math.abs(closestVoltage - cellVoltage)) {
                closestVoltage = voltage;
              }
            }
            const batteryPercentage = dischargePlot[closestVoltage] || 'N/A';
            batteryPercentages.push(batteryPercentage);

            logicCurrent.push(logicCurrentPoint);
            motorCurrent.push(motorCurrentPoint);
            logicPower.push(logicPowerPoint);
            motorPower.push(motorPowerPoint);
            batteryVoltage.push(batteryVoltagePoint);
            regulatorVoltage.push(regulatorVoltagePoint);
            timestamps.push(point.datapoint_time);
            xPositions.push(point.x);
            yPositions.push(point.y);
          });

          setData({
            logicCurrent,
            motorCurrent,
            logicPower,
            motorPower,
            batteryVoltage,
            regulatorVoltage,
          });
          setTimestamps(timestamps);
          setXPositions(xPositions);
          setYPositions(yPositions);
          setBatteryPercentages(batteryPercentages);
          setLogicOverload(getPenultimateValue(logicCurrent) > 2.6);
          setMotorOverload(getPenultimateValue(motorCurrent) > 1.8);
          drawPath(xPositions, yPositions);
        })
        .catch(error => {
          console.error('Error fetching replay data:', error);
        });
    }
  }, [replayDetails]);

  const drawPath = (xPositions, yPositions) => {
    const canvas = canvasRef.current;
    const ctx = canvas.getContext('2d');
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    ctx.strokeStyle = 'pink';
    ctx.beginPath();
    for (let i = 0; i < xPositions.length; i++) {
      const x = xPositions[i];
      const y = yPositions[i];
      if (i === 0) {
        ctx.moveTo(x, y);
      } else {
        ctx.lineTo(x, y);
      }
    }
    ctx.stroke();
  };

  const chartOptions = {
    responsive: true,
    maintainAspectRatio: false,
    scales: {
      x: { type: 'linear', position: 'bottom' },
      y: { beginAtZero: true },
    },
  };

  const createChartData = (label, data, color) => ({
    labels: timestamps,
    datasets: [
      {
        label,
        data,
        fill: false,
        backgroundColor: color,
        borderColor: color,
      },
    ],
  });

  // Get the penultimate value helper function
  const getPenultimateValue = (arr) => {
    return arr.length > 1 ? arr[arr.length - 2] : 'N/A';
  };

  return (
    <div className="Robot">
      <div className="title">
        <h1>{`${replayDetails} - Robot1`}</h1>
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
              <p>Battery voltage: {getPenultimateValue(data.batteryVoltage) || 'xx.x'} V</p>
              <p>Cell voltage: {getPenultimateValue(data.batteryVoltage) !== 'N/A' ? (getPenultimateValue(data.batteryVoltage) / 12).toFixed(2) : 'x.x'} V</p>
              <p>Battery charge: {getPenultimateValue(batteryPercentages) || 'error'} %</p>
            </div>
            <div className="column">
              <p>Logic overload detected: {logicOverload ? 'TRUE' : 'FALSE'}</p>
              <p>Motor overload detected: {motorOverload ? 'TRUE' : 'FALSE'}</p>
              <p>Regulator voltage: {getPenultimateValue(data.regulatorVoltage) || 'xx.x'} V</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default ReplayRobot;
