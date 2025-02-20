import React, { useState } from 'react';
import './Verify.css';

const Verify = ({ goToHome }) => {
  const [code, setCode] = useState('');
  const [isValid, setIsValid] = useState(true);

  const codeRegex = /^\d{5}$/;

  const handleInputChange = (e) => {
    const value = e.target.value;
    setCode(value);
    setIsValid(codeRegex.test(value));
  };

  const handleVerify = () => {
    if (code === '84265') {
      goToHome();
    } else if (isValid) {
      // Navigate to the main application or show verification success
      console.log('Verification successful');
    }
  };

  return (
    <div className="Verify">
      <h1>Enter Verification Code</h1>
      <div className="input-wrapper">
        <input
          type="text"
          placeholder="Enter your code"
          value={code}
          onChange={handleInputChange}
          className={!isValid && code.length > 0 ? 'input-error' : ''}
        />
        {code && (
          <div className={`icon ${isValid ? 'icon-valid' : 'icon-invalid'}`}>
            {isValid ? '✔' : '✖'}
          </div>
        )}
      </div>
      <div className="verify-button-container">
        <button onClick={handleVerify}>Verify</button>
      </div>
    </div>
  );
};

export default Verify;
