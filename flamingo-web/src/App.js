import React, { useState } from 'react';
import HomePage from './HomePage';
import Login from './Login';
import Verify from './Verify';
import FlamingoControl from './FlamingoControl';
import ReplayMenu from './ReplayMenu';
import Start from './Start';
import LiveRobot from './LiveRobot';
import ReplayRobot from './ReplayRobot'; // Ensure you have this import

function App() {
  const [currentPage, setCurrentPage] = useState('start');
  const [selectedReplay, setSelectedReplay] = useState(null);

  const showLoginPage = () => setCurrentPage('login');
  const showVerifyPage = () => setCurrentPage('verify');
  const showHomePage = () => setCurrentPage('home');
  const showReplayMenu = () => setCurrentPage('replayMenu');
  const showFlamingoControl = () => setCurrentPage('flamingoControl');
  const goToLiveRobotPage = () => setCurrentPage('liveRobot');

  const goToReplayRobotPage = (replay) => {
    setSelectedReplay(replay);
    setCurrentPage('replayRobot');
  };

  return (
    <div className="App">
      {currentPage === 'start' && <Start goToLogin={showLoginPage} />}
      {currentPage === 'login' && <Login goToVerify={showVerifyPage} />}
      {currentPage === 'verify' && <Verify goToHome={showHomePage} />}
      {currentPage === 'home' && <HomePage goToFlamingoConnect={showFlamingoControl} goToReplayMenu={showReplayMenu} />}
      {currentPage === 'flamingoControl' && <FlamingoControl goToLiveRobotPage={goToLiveRobotPage} goHome={showHomePage} />}
      {currentPage === 'replayMenu' && <ReplayMenu goBack={showHomePage} goToReplayRobot={goToReplayRobotPage} />}
      {currentPage === 'liveRobot' && <LiveRobot goHome={showHomePage} />}
      {currentPage === 'replayRobot' && <ReplayRobot replayDetails={selectedReplay} goHome={showHomePage} />}
    </div>
  );
}

export default App;
