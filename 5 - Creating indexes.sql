SELECT * FROM "country" WHERE "continent" = 'Africa';

CREATE UNIQUE INDEX "unique_country_name" ON "country" ("name");

CREATE INDEX "country_continent" ON "country" ("continent");

-- educational purpose index
SELECT * FROM "city" WHERE "name" = 'Jinzhou' AND "countrycode" = 'CHN' AND "district" = 'Liaoning';
CREATE UNIQUE INDEX "unique_name_countrycode_district" ON "city" ("name","countrycode","district");

SELECT * from "city";
CREATE INDEX "index_district" ON "city" ("district");