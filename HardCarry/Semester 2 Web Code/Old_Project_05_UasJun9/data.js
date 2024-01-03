import React from 'react';
import { useParams } from 'react-router-dom';

const Data = ({ data }) => {
  const { index } = useParams();
  const heroData = data[index];

  // Check if heroData exists before accessing its properties
  if (!heroData) {
    return <div></div>;
  }

  return (
    <div className="data-container">
      <div className="left-side">
        <img src={heroData.img} alt="Pahlwan" className="pahlwan-image" />
        <div className="nama">{heroData.nama}</div>
      </div>
      <div className="right-side">
        <div className="contents">
          <p>{heroData.nama2}</p>
          <p>Kategori: {heroData.kategori}</p>
          <p>Asal: {heroData.asal}</p>
          <p>Lahir: {heroData.lahir}</p>
          <p>Usia: {heroData.usia}</p>
          <p>Gugur: {heroData.gugur}</p>
          <p>Lokasi Makam: {heroData.lokasimakam}</p>
        </div>
        <div className="history">
          <h2>History</h2>
          <p>{heroData.history}</p>
        </div>
      </div>
    </div>
  );
};

export default Data;


