CREATE DATABASE temp_genshin;
USE temp_genshin;

CREATE TABLE characters(
    id VARCHAR(10) PRIMARY KEY,
    name CHAR(30) UNIQUE NOT NULL,
    atk int(10),
    crit int(3),
    crit_dmg int(3),
    
);