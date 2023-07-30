-- Cuantos registros
SELECT
    COUNT(*) AS "users_counts"
FROM
    "users";

-- Min followers
SELECT
    MIN("followers") AS "min_user_followers"
FROM
    "users";

-- Max followers
SELECT
    MAX("followers") AS "max_user_followers"
FROM
    "users";

-- Average followers
SELECT
    ROUND(AVG("followers")) AS "avg_users_followers"
FROM
    "users";

SELECT
    SUM(followers) / COUNT(*) AS "avg_users_followers_manual"
FROM
    "users";

-- Group By
SELECT
    "first_name",
    "last_name",
    "followers"
FROM
    "users"
WHERE
    "followers" = 4
    OR "followers" = 4999;

SELECT
    COUNT(*),
    "followers"
FROM
    "users"
WHERE
    "followers" = 4
    OR "followers" = 4999
GROUP BY
    "followers";

SELECT
    COUNT(*),
    "followers"
FROM
    "users"
WHERE
    "followers" BETWEEN 4500
    AND 4600
GROUP BY
    "followers"
ORDER BY
    "followers" ASC;

-- Having
SELECT
    *
FROM
    "users";

SELECT
    COUNT(*),
    "country"
FROM
    "users"
GROUP BY
    "country"
ORDER BY
    "country" ASC;

SELECT
    COUNT(*) AS "total",
    "country"
FROM
    "users"
GROUP BY
    "country"
HAVING
    COUNT(*) > 5
ORDER BY
    COUNT(*) DESC;

-- Distinc
SELECT
    DISTINCT "country"
FROM
    "users";

-- Group by with other functions
SELECT
    "email",
    SUBSTRING("email", POSITION('@' IN "email") + 1) AS "domain"
FROM
    "users";

-- How many user per domain
SELECT
    count(*),
    SUBSTRING("email", POSITION('@' IN "email") + 1) AS "domain"
FROM
    "users"
GROUP BY
    SUBSTRING("email", POSITION('@' IN "email") + 1)
HAVING
    COUNT(*) > 1
ORDER BY
    COUNT(*) DESC;

-- Sub Queries (where,select,having,anyware)
-- Ex: SELECT * FROM "tableA" WHERE (Sub Query from Table B) - Not efficient on big databases;