-- ------------------------------------------------------
-- VET SCHEMA - PARTIALLY NORMALIZED
-- ------------------------------------------------------
USE test;

DROP TABLE IF EXISTS Dog;
DROP TABLE IF EXISTS Owner;

CREATE TABLE Owner (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    CONSTRAINT PK_Owner PRIMARY KEY (id)
);

CREATE TABLE Dog (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
	breed varchar(255) NOT NULL,
    age float NULL,
	owner_id int NOT NULL,
    CONSTRAINT PK_Dog PRIMARY KEY (id),
	CONSTRAINT FK_Dog_Owner FOREIGN KEY (owner_id) REFERENCES Owner(id)
);

-- ------------------------------------------------------
-- Add the data
-- ------------------------------------------------------

-- Name is a compound field. We should split into first and last name.
INSERT INTO Owner (name) VALUES
('Bobby Beebop'),
('Jenn Johensonyun'),
('Jonny Hassomedogs');

-- Breed has redundant entries. We should extract it into its own table.
INSERT INTO Dog (name, breed, age, owner_id) VALUES
('Ed', 'Boxer', 1, 1),
('Ted', 'Lab', 4, 1),
('Ned', 'Unknown', 4, 1),
('Funyun', 'Boxer', 8, 2),
('Dogzilla', 'Dogosarus-rex', 7, 3),
('Son of Spot', 'Unknown', 6, 3);