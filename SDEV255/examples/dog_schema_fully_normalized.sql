-- ------------------------------------------------------
-- VET SCHEMA - FULLY NORMALIZED
-- ------------------------------------------------------
USE test;

DROP TABLE IF EXISTS Dog;
DROP TABLE IF EXISTS Owner;
DROP TABLE IF EXISTS Breed;

CREATE TABLE Breed (
    id int NOT NULL AUTO_INCREMENT,
    breed varchar(255) NOT NULL,
    CONSTRAINT PK_Breed PRIMARY KEY (id)
);

CREATE TABLE Owner (
    id int NOT NULL AUTO_INCREMENT,
    first_name varchar(255) NOT NULL,
    last_name float NULL,
    CONSTRAINT PK_Owner PRIMARY KEY (id)
);

CREATE TABLE Dog (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    age float NULL,
	breed_id int NOT NULL,
	owner_id int NOT NULL,
    CONSTRAINT PK_Dog PRIMARY KEY (id),
	CONSTRAINT FK_Dog_Owner FOREIGN KEY (owner_id) REFERENCES Owner(id)
	CONSTRAINT FK_Dog_Breed FOREIGN KEY (breed_id) REFERENCES Breed(id)
);

-- ------------------------------------------------------
-- Add the data
-- ------------------------------------------------------

INSERT INTO Breed (breed) VALUES
('Boxer'),
('Lab'),
('Dogosarus-rex'),
('Unknown')

INSERT INTO Owner (first_name, last_name) VALUES
('Bobby', 'Beebop'),
('Jenn', 'Johensonyun'),
('Jonny', 'Hassomedogs');

INSERT INTO Dog (name, breed_id, age, owner_id) VALUES
('Ed', 1, 1, 1),
('Ted', 2, 4, 1),
('Ned', 4, 4, 1),
('Funyun', 1, 8, 2),
('Godzilla', 3, 7, 3),
('Son of Spot', 4, 6, 3);