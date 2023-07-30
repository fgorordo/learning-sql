-- Random operators to use on selects
SELECT
    "id",
    UPPER("name") AS "upper_name",
    LOWER("name") AS "lower_name",
    LENGTH("name") as "name_lenght",
    '20' AS "constant",
    CONCAT("id", '-', "name") AS "id_name",
    '*' || "id" || "name" || '*' AS "barcode"
FROM
    "users";

-- Modifing returning data
SELECT
    "id",
    SUBSTRING("name", 0, (POSITION(' ' IN "name"))) as "first_name",
    SUBSTRING("name", (POSITION(' ' IN "name") + 1)) AS "last_name",
    TRIM(
        SUBSTRING("name", (POSITION(' ' IN "name") + 1))
    ) AS "trim_example"
FROM
    "users";

-- Modified table structure by adding "first_name" && "last_name" fields, and dividing name to fullfill those fields
UPDATE
    "users"
SET
    "first_name" = SUBSTRING("name", 0, (POSITION(' ' IN "name"))),
    "last_name" = SUBSTRING("name", (POSITION(' ' IN "name") + 1));