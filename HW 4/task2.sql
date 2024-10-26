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
INSERT INTO petPet VALUES
("Fluffy", "Harold", "cat", "F", "930204", NULL),
("Claws", "Gwen", "cat", "M", "940317", NULL),
("Buffy", "Harold", "dog", "F", "890513", NULL),
("Fang", "Benny", "dog", "M", "900827", NULL),
("Bowser", "Diane", "dog", "M", "790831", "950729"),
("Chirpy", "Gwen", "bird", "F", "980911", NULL),
("Whistler", "Gwen", "bird", NULL, "971209", NULL),
("Slim", "Benny", "snake", "M", "960429", NULL),
('Puffball','Diane','hamster','F','990330',NULL);
INSERT INTO petEvent VALUES
("Fluffy", "950515", "litter", "4 kittens, 3 female, 1 male"),
("Buffy", "930623", "litter", "5 puppies, 2 female, 3 male"),
("Buffy", "940619", "litter", "3 puppies, 3 female"),
("Chirpy", "990321", "vet", "needed beak straightened"),
("Slim", "970803", "vet", "broken rib"),
("Slim", "971004", "vet", "broken tooth"),
("Bowser", "911012", "kennel", NULL),
("Fang", "911012", "kennel", NULL),
("Fang", "980828", "birthday", "Gave him a new chew toy"),
("Claws", "980317","birthday", "Gave him a new flea collar"),
("Whistler", "981209", "birthday", "First birthday");