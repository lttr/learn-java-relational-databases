-- SELECT all
SELECT * FROM person;
-- SELECT with not null condition
SELECT * FROM person WHERE email IS NOT NULL;
-- SELECT with boolean condition
SELECT * FROM person WHERE deleted IS FALSE;
-- SELECT with date condition
SELECT * FROM person WHERE birth_date > TODAY - INTERVAL 10 YEARS;
-- SELECT with join
SELECT * FROM person p JOIN address a ON p.id = a.person_id;
-- SELECT with join and condition
SELECT * FROM person p JOIN address a ON p.id = a.person_id WHERE a.address LIKE '%Road%';

-- INSERT simple
INSERT INTO address (id, street, person_id) VALUES (9, 'New Castle Place', 10);
-- INSERT with select next id
INSERT INTO address (id, street, person_id) VALUES ((SELECT MAX(id) + 1 FROM address), 'Brickson Park Way', 10);

-- UPDATE simple
UPDATE person SET deleted = 1 WHERE id = 4;
-- UPDATE with select in condition
UPDATE address SET street = 'Brickson Road' WHERE person_id = (SELECT id FROM person WHERE name = 'Mildred' AND last_name = 'Wagner' LIMIT 1);

-- DELETE simple
DELETE FROM address WHERE id = 3;
-- DELETE with referential integrity in trouble
DELETE FROM person WHERE name = 'Juan' AND last_name = 'Reyes' LIMIT 1;

