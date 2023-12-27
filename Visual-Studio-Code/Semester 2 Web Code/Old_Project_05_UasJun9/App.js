import React from 'react';
import './test.css';
import indo from './indo.jpg'
import { useState, useEffect, useRef } from 'react';
import { BrowserRouter as Router, Route, Routes, Link, useLocation } from 'react-router-dom';

import suk from './Suk.jpg'
import hat from './hat.jpg'
import sud from './Sud.jpg'
import rad from './rad.jpg'

function App() {
  return (
    <Router>
      <div>
        <nav>
          <div id="container">
            <div>
              <h2><span id="red">Pahlawan</span> <span id="white">Indonesia</span></h2>
            </div>
            <div id="list">
              <ul type="none">
              
                <li>
                  <Link className = "linkk" style={{ textDecoration: 'none' }} to="/">Home</Link>
                </li>
                
                <li>
                  <Link className = "linkk" style={{ textDecoration: 'none' }} to="/belajar">Belajar</Link>
                </li>
                <li>
                  <Link className = "linkk" style={{ textDecoration: 'none' }} to="/about">Kami</Link>
                </li>
              </ul>
            </div>
          </div>
        </nav>

        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/belajar" element={<Belajar />} />
          <Route path="/lol" element={<lol />} />
          <Route path="/about" element={<About />} />
        </Routes>
      </div>
    </Router>
  );
}

function Home() {
  return (
    <div id="rick">
      <div id="ridck">
      <img src = {indo} id="eimg" ></img>
      </div>
      <div>
      <h1>Mengenal Jasa Pahlawan</h1>
      <p>
        Mengenal Pahlawan Indonesia: Website ini didedikasikan untuk memperkenalkan dan menghormati pahlawan-pahlawan
        Indonesia yang telah berjuang demi kemerdekaan dan kemajuan bangsa. Di sini Anda akan menemukan cerita inspiratif
        tentang keberanian, pengorbanan, dan patriotisme para pahlawan yang telah memberikan kontribusi besar bagi
        negara. Melalui penjelajahan sejarah dan perjuangan mereka, kami berharap dapat meningkatkan penghargaan dan
        kebanggaan terhadap warisan pahlawan Indonesia. Selamat datang dan nikmati konten yang kami sajikan!
      </p>
      <br>
      </br>
      <p>
      Dunia pahlawan adalah khazanah yang tak terbatas, dan dengan kemajuan teknologi informasi, kita memiliki akses tak terbatas ke sumber-sumber pengetahuan yang mengagumkan. Dalam perjalanan ini, mari kita menjelajahi website yang penuh dengan kisah-kisah menakjubkan, artikel mendalam, dan informasi berharga tentang pahlawan dari masa lalu dan masa kini. Dengan sekali sentuhan pada tombol di bawah ini, pintu menuju dunia penuh inspirasi dan keberanian akan terbuka, memungkinkan kita untuk mempelajari, terinspirasi, dan menghargai warisan luar biasa yang ditinggalkan oleh pahlawan sejati. Segera mulailah perjalanan penuh petualangan ini dan biarkan keajaiban pahlawan mengisi jiwa kita.
      .Oleh karena itu mari pencet tombol untuk mengenal siapa pahlawan-pahlawan kita!
      </p>
      <button id="butt3"><Link className = "linkk"  style={{ textDecoration: 'none' }} to="/belajar">Mari Kita Belajar</Link></button>
      
      </div>
    </div>
  );
}


function Belajar() {
  const [searchQuery, setSearchQuery] = useState('');
  const [heroData, setHeroData] = useState([]);
  const [filteredData, setFilteredData] = useState([]);
  const [selectedHero, setSelectedHero] = useState(null);

  const handleInputChange = (event) => {
    setSearchQuery(event.target.value);
  };

  const fetchData = async () => {
    try {
      const response = await fetch('https://gist.githubusercontent.com/yuristianto/d2b2f75292927f15b633d9f8a3bd4ec6/raw/5bdb0100530fefd4670d987fbbcf23ed183842d4/hero.json');
      const data = await response.json();
      setHeroData(data);
    } catch (error) {
      console.error('Error fetching data:', error);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  const handleSearch = () => {
    const filteredData = heroData.filter(
      (hero) =>
        hero.nama.toLowerCase().includes(searchQuery.toLowerCase()) ||
        hero.asal.toLowerCase().includes(searchQuery.toLowerCase())
    );
    setFilteredData(filteredData);
  };

  const showSelectedData = (hero) => {
    setSelectedHero(hero);
  };

  
  const scrollToTop = () => {
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    });
  };

  return (
    <div id="rick">
      <h1>Cari Pahlawan Mengunakan Search Bar</h1>
      {selectedHero && (




        
        <div id="dataa">

          <div id = "atas">

              <div id="atasimg">
              <img id="pearl" src={selectedHero.img}></img>
                </div>

                <div id="ataskata">
                  <h1 id="black">{selectedHero.nama2}</h1>
                  <h3 id="coloring2">
                  
                      <span id="asal">Asal</span>: {selectedHero.asal}
                      <br></br>
                      <span>Lahir</span>: {selectedHero.lahir}
                      <br></br>
                      <span>Wafat</span>: {selectedHero.gugur}
                      <br></br>
                      <span id="asal">Usia</span>: {selectedHero.usia}
                      <br></br>
                      <br></br>
                      Dimakam di {selectedHero.lokasimakam}
                  
                  </h3>
                </div>

          </div>
          <p id="font">{selectedHero.history}</p>


        </div>
      )}




      <div>
      <input id="search" type="text" value={searchQuery} onChange={handleInputChange} placeholder="Search by name or province" />
      <button id="butt"  onClick={handleSearch}>Cari</button>
      </div>




      {filteredData.map((hero, index) => (




        <div id="hasildata">
        <div key={index} id="kartu">
          <img src={hero.img} alt={hero.nama} />
          <h3 id="coloring"><b>{hero.nama}</b></h3>
          <p>{hero.asal}</p>
          <button id="butt2" onClick={() => {showSelectedData(hero); scrollToTop();}}>Show More data</button>

        </div>
        </div>




      ))}
      
    </div>
  );
}

/*
function Belajar() {
  const [searchQuery, setSearchQuery] = useState('');
  const [searchResults, setSearchResults] = useState([]);
  const [data, setData] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const heroesPerPage = 8;
  const [isLoading, setIsLoading] = useState(true); // New state for loading spinner

  useEffect(() => {
    fetch(
      'https://gist.githubusercontent.com/yuristianto/d2b2f75292927f15b633d9f8a3bd4ec6/raw/5bdb0100530fefd4670d987fbbcf23ed183842d4/hero.json'
    )
      .then((response) => response.json())
      .then((data) => {
        setData(data);
        setIsLoading(false); // Set loading state to false once data is fetched
      })
      .catch((error) => {
        console.log('Error:', error);
        setIsLoading(false); // Set loading state to false in case of an error
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
    <div className="container">
      {isLoading ? (
        <div className="spinner">
          <div className="loader"></div>
        </div>
      ) : (
        <div className="search-container">
          <h1>Carilah Pahlawan-Mu!!</h1>
          <form className="search-bar" onSubmit={performSearch}>
            <input
              type="text"
              placeholder="Cari pahlawan, Ketik Nama atau Provinsi"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
            />
            <button type="submit">Search</button>
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
                    <Link to="/lol" state={{ item }}>
                      Go to Data
                    </Link>
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
      )}
    </div>
  );
}

function lol() {
  const location = useLocation();
  const { item } = location.state;

  return (
    <div>
      <h1>Data</h1>
      <div className="Kartu">
        <img id="ula" src={item.img} alt={item.nama} />
        <p className="bold">Nama: {item.nama}</p>
        <p className="origin">Nama Lain: {item.nama2}</p>
        <p className="origin">Kategori: {item.kategori}</p>
        <p className="origin">Asal: {item.asal}</p>
        <p className="origin">Lahir: {item.lahir}</p>
        <p className="origin">Usia: {item.usia}</p>
        <p className="origin">Gugur: {item.gugur}</p>
        <p className="origin">Lokasi Makam: {item.lokasimakam}</p>
        <p className="origin">History: {item.history}</p>
      </div>
    </div>
  );
}*/

function About() {
  return (
    <div id = "rick">

      <h1>Meet Our own Heroes</h1>

    <div id="rick2">
      <div>
      <img src = {suk} id="erimg" ></img>
      <h3>Evander Nikolai</h3>
      <h3>00000079812</h3>
      </div>

      <div>
      <img src = {hat} id="erimg" ></img>
      <h3>Javarell Muzheka</h3>
      <h3>00000079812</h3>
      </div>

      <div>
      <img src = {sud} id="erimg" ></img>
      <h3>Muhammad Ilham Sabillah</h3>
      <h3>000000792002</h3>
      </div>

      <div>
      <img src = {rad} id="erimg" ></img>
      <h3>Muhammad Daffa Rayyanda</h3>
      <h3>00000082247</h3>
      </div>
    </div>

    </div>
  );
}

export default App;
