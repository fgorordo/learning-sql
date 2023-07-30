SELECT * FROM "city";

-- ADDED CITY FK
ALTER TABLE "city"
	ADD CONSTRAINT "fk_countrycode"
	FOREIGN KEY ("countrycode")
	REFERENCES "country" ("code"); -- ON DELETE CASCADE;

-- Added countrylanguage foreign key to country;
SELECT * FROM "countrylanguage";
ALTER TABLE "countrylanguage"
	ADD CONSTRAINT "fk_countrycode"
	FOREIGN KEY ("countrycode")
	REFERENCES "country" ("code");

SELECT * FROM "country" WHERE "code" = 'AFG';
SELECT * FROM "city" WHERE "countrycode" = 'AFG';

-- Creating AFK country code to add relations to city table
INSERT INTO "country"
	VALUES ('AFG', 'Afghanistan', 'Asia', 'Southern Asia', 652860, 1919, 40000000, 62, 69000000, NULL, 'Afghanistan', 'Totalitarian', NULL, NULL, 'AF');
	
	
--
SELECT * FROM "country" WHERE "code" = 'AFG';

DELETE FROM "country" WHERE "code" = 'AFG';

SELECT * FROM "city" WHERE "countrycode" = 'AFG';
SELECT * FROM "countrylanguage" WHERE "countrycode" = 'AFG';