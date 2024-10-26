DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;
DROP TABLE IF EXISTS petPet, petEvent;
CREATE TABLE petPet(
petname VARCHAR(20),
owner VARCHAR(20),
species VARCHAR(20),
gender ENUM('M','F'),
birth  INTEGER(6),
death  INTEGER(6)
);
ALTER TABLE petPet ADD PRIMARY KEY(petname,owner);
CREATE TABLE petEvent(
petname VARCHAR(20),
eventdate INTEGER(6),
eventtype VARCHAR(20),
remark VARCHAR(40),
FOREIGN KEY (petname) REFERENCES petPet(petname),
PRIMARY KEY (petname,eventdate)
);
