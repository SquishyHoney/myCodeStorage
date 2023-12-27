import React, { useState } from 'react';
import axios from 'axios';

const JokeGenerator = () => {
  const [joke, setJoke] = useState('');

  const fetchJoke = async () => {
    try {
      const response = await axios.get('https://official-joke-api.appspot.com/random_joke');
      const { setup, punchline } = response.data;
      setJoke(`${setup} ${punchline}`);
    } catch (error) {
      console.error(error);
    }
  };

  return (
    <div>
      <h2>Random Joke Generator</h2>
      <p>{joke}</p>
      <button onClick={fetchJoke}>Generate Joke</button>
    </div>
  );
};

export default JokeGenerator;

