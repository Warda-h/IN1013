DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;
DROP TABLE IF EXISTS petPet, petEvent;
CREATE TABLE petPet(
petname VARCHAR(20),
owner VARCHAR(45),
species VARCHAR(45),
gender ENUM('M','F'),
birth  DATE,
death  DATE
);
ALTER TABLE petPet ADD PRIMARY KEY(petname,owner);
CREATE TABLE petEvent(
petname VARCHAR(20),
eventdate DATE,
eventtype VARCHAR(15),
remark VARCHAR(255),
FOREIGN KEY (petname) REFERENCES petPet(petname),
PRIMARY KEY (petname,eventdate)
);
