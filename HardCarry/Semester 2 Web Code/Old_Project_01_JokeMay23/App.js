/*import React from 'react';
import JokeGenerator from './JokeGenerator';

const App = () => {
  return (
    <div>
      <JokeGenerator />
    </div>
  );
};

export default App;*/
import './styles.css';
import React, { useState } from 'react';

const App = () => {
  const [joke, setJoke] = useState('');

  const fetchJoke = async () => {
    try {
      const response = await fetch('https://official-joke-api.appspot.com/random_joke');
      const data = await response.json();
      setJoke(`${data.setup} ${data.punchline}`);
    } catch (error) {
      console.error(error);
    }
  };

  return (
    <div className="container">
      <div className="navigation">
        <h1>Simple Joke Generator</h1>
      </div>
      <div className="joke">
        <h3>{joke}</h3>
      </div>
      <div className="box">
        <form>
          <input className="button" type="button" value="Press Me" onClick={fetchJoke} />
        </form>
      </div>
    </div>
  );
};

export default App;
