import React, { useState, useEffect, useRef } from 'react';
import './test.css';

import { BrowserRouter as Router, Route, Routes, Link } from 'react-router-dom';

import Nusantara from './Nusantara.jpeg';
import ind from './indo.png';
import Data from './data';

function App() {
  
  const [searchQuery, setSearchQuery] = useState('');
  const [searchResults, setSearchResults] = useState([]);
  const [data, setData] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const heroesPerPage = 8;

  useEffect(() => {
    fetch(
      'https://gist.githubusercontent.com/yuristianto/d2b2f75292927f15b633d9f8a3bd4ec6/raw/5bdb0100530fefd4670d987fbbcf23ed183842d4/hero.json'
    )
      .then((response) => response.json())
      .then((data) => {
        setData(data);
      })
      .catch((error) => {
        console.log('Error:', error);
      });
  }, []);

  const performSearch = (e) => {
    e.preventDefault(); // Prevent form submission

    const query = searchQuery.toLowerCase();

    if (query === '') {
      setSearchResults([]);
      setCurrentPage(1);
      return;
    }

    const results = data.filter((item) => {
      const { nama, nama2, kategori, asal } = item;
      return (
        nama.toLowerCase().includes(query) ||
        nama2.toLowerCase().includes(query) ||
        kategori.toLowerCase().includes(query) ||
        asal.toLowerCase().includes(query)
      );
    });

    setSearchResults(results);
    setCurrentPage(1);
  };

  const truncateText = (text, limit) => {
    if (text.length > limit) {
      return text.substring(0, limit) + '... Click for more';
    }
    return text;
  };

  const handlePageChange = (page) => {
    setCurrentPage(page);
  };

  const indexOfLastHero = currentPage * heroesPerPage;
  const indexOfFirstHero = indexOfLastHero - heroesPerPage;
  const currentHeroes = searchResults.slice(indexOfFirstHero, indexOfLastHero);
  const totalPages = Math.ceil(searchResults.length / heroesPerPage);

  const dataRef = useRef(null);

  const scrollToData = () => {
    if (dataRef.current) {
      dataRef.current.scrollIntoView({ behavior: 'smooth' });
    }
  };

  return (
    <Router>

      <div className="container">

        <div className="nav-container">
         
            <div id="welcome">
              <h1 id="word"><span id="wel">Welcome to</span> our page</h1>
            </div>

            <div id="links">
              <ul type="none" class="horizontal-list">
                <li>Home</li>
                <li>Learn</li>
                <li>About Us</li>
              </ul>
            </div>
          
        </div>

        <div>

        <div>
          <h1>Mengenal Jasa Pahlawan</h1>
          <p>
            Mengenal Pahlawan Indonesia: Website ini didedikasikan untuk memperkenalkan dan menghormati pahlawan-pahlawan
            Indonesia yang telah berjuang demi kemerdekaan dan kemajuan bangsa. Di sini Anda akan menemukan cerita inspiratif
            tentang keberanian, pengorbanan, dan patriotisme para pahlawan yang telah memberikan kontribusi besar bagi
            negara. Melalui penjelajahan sejarah dan perjuangan mereka, kami berharap dapat meningkatkan penghargaan dan
            kebanggaan terhadap warisan pahlawan Indonesia. Selamat datang dan nikmati konten yang kami sajikan!
          </p>
        </div>
        </div>

        <div className="search-container">
        <h1 >Carilah Pahlawan-Mu!!</h1>
          <form className="search-bar" onSubmit={performSearch}>
            <input
              type="text"
              placeholder="Cari pahlawan, Ketik Nama atau Provinsi"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
            />
            <button type="submit">
              Search
            </button>
          </form>

          <div className="Kartu-container">
            {currentHeroes.length === 0 ? (
              <div className="no-data">No data</div>
            ) : (
              currentHeroes.map((item, index) => (
                <div key={index} className="Kartu">
                  <img id="ula" src={item.img} alt={item.nama} />
                  <p className="bold">{item.nama}</p>
                  <p className="origin">{item.asal}</p>

                  <button id="neext" onClick={scrollToData}>
                    <Link to={`/data/${index}`}>Go to Data</Link>
                  </button>
                </div>
              ))
            )}
          </div>

          <div className="pagination">
            {currentPage > 1 && (
              
              <Link to="/">
              <button
              className="pagination-button"
              onClick={() => {
                handlePageChange(currentPage - 1);
                
              }}
            >
              Prev
            </button>
            </Link>
            )}

            {currentPage < totalPages && (
              <Link to="/">
              <button
              className="pagination-button"
              onClick={() => {
                handlePageChange(currentPage + 1);
                
              }}
            >
              Next
            </button>
            </Link>
            )}
          </div>
        </div>
        
      </div>

      <Routes>
        <Route
          path="/data/:index"
          element={
            <div ref={dataRef}>
              <Data data={currentHeroes} />
            </div>
          }
        />
      </Routes>
      
    </Router>
  );
}

export default App;
