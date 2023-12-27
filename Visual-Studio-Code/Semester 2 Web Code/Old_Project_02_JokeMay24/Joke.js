import React, { useState, useEffect } from 'react';
import './styles.css'; // Import the CSS file
import image from './image.png';


function App() {
  const [joke, setJoke] = useState('');
  const [likes, setLikes] = useState(0);
  const [dislikes, setDislikes] = useState(0);

  useEffect(() => {
    fetchJoke();
  }, []);

  const fetchJoke = async () => {
    try {
      const response = await fetch('https://official-joke-api.appspot.com/random_joke');
      const data = await response.json();
      setJoke(`${data.setup} ${data.punchline}`);
    } catch (error) {
      console.error(error);
    }
  };

  const handleLike = () => {
    setLikes(likes + 1);
  };

  const handleDislike = () => {
    setDislikes(dislikes + 1);
  };

  return (
    <div>
      <div className="header">
        <h1>A joke a day keeps the doctor away</h1>
      </div>
      <img src={image}></img>
      <div className="container">
        <div className="content">
          <h2>Joke Generator</h2>
          <div className="joke-box">
            <p>{joke}</p>
            <button className="joke-button" onClick={fetchJoke}>
              Get Joke
            </button>
          </div>
        </div>
        <div className="feedback">
          <h2>Did you like this joke?</h2>
          <div className="feedback-buttons">
            <button className="like-button" onClick={handleLike}>
              <p class ="yes">Yes ({likes})</p>
            </button>
            <button className="dislike-button" onClick={handleDislike}>
                <p class ="no">No ({dislikes})</p>
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}

export default App;
