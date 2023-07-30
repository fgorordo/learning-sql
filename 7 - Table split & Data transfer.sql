-- Purge table for fresh start
DROP TABLE city;
DROP TABLE country;
DROP TABLE countrylanguage;
DROP TABLE users;

-- After using the sql script for brand new database
SELECT DISTINCT continent FROM country ORDER BY continent;

-- Create continent table
CREATE TABLE continent (
	code SERIAL,
	name text NOT NULL
);

ALTER TABLE continent ADD PRIMARY KEY(code);

DROP TABLE continent;

INSERT INTO continent (name)
SELECT DISTINCT continent FROM country ORDER BY continent;

SELECT * FROM continent;
