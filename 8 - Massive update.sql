SELECT 
	a.name, a.continent,
	(SELECT "code" FROM continent b WHERE b.name = a.continent)
FROM country a;

-- CHANGING COUNTRY DATA TYPE TO MATCH RELATION
UPDATE country a
set continent = (SELECT "code" FROM continent b WHERE b.name = a.continent);

SELECT name,continent FROM country;

ALTER TABLE country
ALTER COLUMN continent TYPE int4
USING continent::integer;

DROP TABLE country_bk;
