-- Nombre, apellido e ip, donde la última conextion se dío de 221.XXX.XXX.XXX
SELECT
    *
FROM
    "users";

SELECT
    "first_name",
    "last_name",
    "last_connection" AS "ip"
FROM
    "users"
WHERE
    "last_connection" LIKE '221%';

-- Nombre, apellido y seguidores(followers) de todos los que siguen más de 4600 personas
SELECT
    "first_name",
    "last_name",
    "followers" AS "seguidores"
FROM
    "users"
WHERE
    "followers" > 4600;

-- Nombre, apellido, seguidores(followers) de todos los que tienen entre 4600 y 4700 seguidores
SELECT
    "first_name",
    "last_name",
    "followers" AS "seguidores"
FROM
    "users" -- WHERE "followers" > 4600 AND "followers" < 4700
WHERE
    "followers" BETWEEN 4600
    AND 4700
ORDER BY
    "followers" ASC;

-- Cuantos registros
SELECT
    COUNT(*)
FROM
    "users";