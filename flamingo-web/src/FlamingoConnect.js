import React, { useState } from 'react';
import './FlamingoConnect.css';

const FlamingoConnect = ({ goBack, goToControl }) => {
  const [ipAddress, setIpAddress] = useState('');
  const [isValid, setIsValid] = useState(true);
  const [showError, setShowError] = useState(false);

  // IPv4 regex pattern
  const ipv4Regex = new RegExp("^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\." +
    "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\." +
    "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\." +
    "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$");

  const handleInputChange = (e) => {
    const value = e.target.value;
    setIpAddress(value);
    const valid = ipv4Regex.test(value);
    setIsValid(valid);
    if (showError) {
      setShowError(false);
    }
  };

  const handleConnect = () => {
    if (ipAddress === '192.168.137.40') {
      goToControl();
    } else {
      setShowError(true);
      setTimeout(() => setShowError(false), 3000); // Hide error message after 3 seconds
    }
  };

  return (
    <div className="FlamingoConnect">
      <h1>Connect to Flamingo</h1>
      <div className="input-wrapper">
        <input
          type="text"
          id="ipAddress"
          placeholder="Enter Flamingo IP"
          value={ipAddress}
          onChange={handleInputChange}
          className={!isValid && showError ? 'input-error' : ''}
        />
        {ipAddress && (
          <div className={`icon ${isValid ? 'icon-valid' : 'icon-invalid'}`}>
            {isValid ? '✔' : '✖'}
          </div>
        )}
      </div>
      {showError && <div className="error-message">Error: Could Not Connect</div>}
      <div className="flamingo-button-container">
        <button onClick={handleConnect}>Connect</button>
        <button onClick={goBack}>Back</button>
      </div>
    </div>
  );
}

export default FlamingoConnect;
