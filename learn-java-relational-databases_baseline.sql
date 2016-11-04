-- DDL
CREATE TABLE person (
	id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	visits INT,
	birth_date DATE,
	deleted BIT,
	PRIMARY KEY (id)
);

CREATE TABLE address (
    id INT,
    street VARCHAR(50),
    person_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (person_id) REFERENCES person(id)
);

-- DML
INSERT INTO person (id, first_name, last_name, email, visits, birth_date, deleted) VALUES (1, 'Ruth', 'Hill', null, 17, '2000-05-09', TRUE);
INSERT INTO person (id, first_name, last_name, email, visits, birth_date, deleted) VALUES (2, 'Juan', 'Reyes', null, 58, '1999-06-24', TRUE);
INSERT INTO person (id, first_name, last_name, email, visits, birth_date, deleted) VALUES (3, 'Bobby', 'Rivera', null, 0, '1998-05-17', TRUE);
INSERT INTO person (id, first_name, last_name, email, visits, birth_date, deleted) VALUES (4, 'Dennis', 'Pierce', 'dpierce3@aboutads.info', 2, '1991-11-08', FALSE);
INSERT INTO person (id, first_name, last_name, email, visits, birth_date, deleted) VALUES (5, 'Ralph', 'Roberts', null, 82, '2000-04-22', FALSE);
INSERT INTO person (id, first_name, last_name, email, visits, birth_date, deleted) VALUES (6, 'Paula', 'Peters', 'ppeters5@nsw.gov.au', 20, '1992-05-27', TRUE);
INSERT INTO person (id, first_name, last_name, email, visits, birth_date, deleted) VALUES (7, 'Willie', 'Hansen', null, 35, '1996-04-13', FALSE);
INSERT INTO person (id, first_name, last_name, email, visits, birth_date, deleted) VALUES (8, 'Stephen', 'Mcdonald', null, 86, '1994-10-25', TRUE);
INSERT INTO person (id, first_name, last_name, email, visits, birth_date, deleted) VALUES (9, 'Nancy', 'Lawrence', 'nlawrence8@techcrunch.com', 53, '1997-05-08', FALSE);
INSERT INTO person (id, first_name, last_name, email, visits, birth_date, deleted) VALUES (10, 'Mildred', 'Wagner', 'mwagner9@cam.ac.uk', 97, '1997-10-24', TRUE);

INSERT INTO address (id, street, person_id) VALUES (1, 'Hintze Pass', 4);
INSERT INTO address (id, street, person_id) VALUES (2, 'Ronald Regan Way', 7);
INSERT INTO address (id, street, person_id) VALUES (3, 'Katie Road', 9);
INSERT INTO address (id, street, person_id) VALUES (4, 'Ramsey Hill', 1);
INSERT INTO address (id, street, person_id) VALUES (5, 'Manufacturers Center', 5);
INSERT INTO address (id, street, person_id) VALUES (6, 'Messerschmidt Lane', 3);
INSERT INTO address (id, street, person_id) VALUES (7, 'Weeping Birch Drive', 8);
INSERT INTO address (id, street, person_id) VALUES (8, 'Sloan Street', 2);

