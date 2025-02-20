import React from 'react';
import axios from 'axios';
import './FlamingoControl.css'; // Use the new CSS file

const FlamingoControl = ({ goHome, goToLiveRobotPage }) => {
  const sendCodeAndNavigate = (code) => {
    console.log(`Sending code ${code} to backend`);
    axios.post('http://localhost:3001/send-code', { code })
      .then((response) => {
        console.log(`Code ${code} sent successfully`);
        goToLiveRobotPage(); // Navigate to LiveRobot page immediately
      })
      .catch((error) => {
        console.error(`Error sending code ${code}: `, error);
      });
  };

  return (
    <div className="FlamingoControl">
      <h1>Flamingo</h1>
      <div className="button-container">
        <button onClick={() => sendCodeAndNavigate(1)}>Retrieve Key</button>
        <button onClick={() => sendCodeAndNavigate(2)}>Escape Maze</button>
      </div>
      <button className="home-button" onClick={goHome}>Home</button> {/* Home button */}
    </div>
  );
};

export default FlamingoControl;
