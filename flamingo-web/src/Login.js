import React, { useState } from 'react';
import './Login.css';

const Login = ({ goToVerify }) => {
  const [email, setEmail] = useState('');
  const [isValid, setIsValid] = useState(true);

  const emailRegex = /^[^@\s]+@[^@\s]+\.[^@\s]+$/;

  const handleInputChange = (e) => {
    const value = e.target.value;
    setEmail(value);
    setIsValid(emailRegex.test(value));
  };

  const handleLogin = () => {
    if (isValid) {
      goToVerify();
    }
  };

  return (
    <div className="Login">
      <h1>Login</h1>
      <div className="input-wrapper">
        <input
          type="text"
          placeholder="Enter your email"
          value={email}
          onChange={handleInputChange}
          className={!isValid ? 'input-error' : ''}
        />
        {email && (
          <div className={`icon ${isValid ? 'icon-valid' : 'icon-invalid'}`}>
            {isValid ? '✔' : '✖'}
          </div>
        )}
      </div>
      <div className="login-button-container">
        <button onClick={handleLogin}>Login</button>
      </div>
    </div>
  );
};

export default Login;
