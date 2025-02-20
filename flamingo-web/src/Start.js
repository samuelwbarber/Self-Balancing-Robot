import React from 'react';
import './Start.css'; 

const Start = ({ goToLogin }) => {
  return (
    <div className="Start">
      <h1>Flamingo</h1>
      <div className="button-container">
        <button onClick={goToLogin}>Login</button>
      </div>
    </div>
  );
};

export default Start;
