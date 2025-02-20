// src/HomePage.js
import React from 'react';
import './HomePage.css'; // Import the CSS for styling

const HomePage = ({ goToFlamingoConnect, goToReplayMenu }) => {
  return (
    <div className="HomePage">
      <h1>Flamingo</h1>
      <div className="button-container">
        <button onClick={goToFlamingoConnect}>Connect to Flamingo</button>
        <button onClick={goToReplayMenu}>Replays</button>
      </div>
    </div>
  );
}

export default HomePage;