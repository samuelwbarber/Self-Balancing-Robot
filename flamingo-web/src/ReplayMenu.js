import React, { useEffect, useState } from 'react';
import axios from 'axios';
import './ReplayMenu.css';

const ReplayMenu = ({ goBack, goToReplayRobot }) => {
    const [replays, setReplays] = useState([]);
    const [error, setError] = useState('');

    useEffect(() => {
        axios.get('http://localhost:3001/sessions')
            .then(response => {
                console.log('Fetched replays:', response.data);
                setReplays(response.data);
            })
            .catch(error => {
                console.error('Error fetching replays:', error);
                setError('Failed to fetch replays. Please try again later.');
            });
    }, []);

    return (
        <div className="ReplayMenu">
            <h1>Replay Menu</h1>
            {error && <p className="error">{error}</p>}
            <div className="replay-list">
                {replays.length === 0 && <p>No replays available.</p>}
                {replays.map((replay) => (
                    <div key={replay.sessionID} className="replay-item" onClick={() => goToReplayRobot(replay.sessionID)}>
                        {`${replay.sessionID} - Robot${replay.robotID}`}
                    </div>
                ))}
            </div>
            <button onClick={goBack}>Back</button>
        </div>
    );
};

export default ReplayMenu;
