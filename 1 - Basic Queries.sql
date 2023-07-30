-- Create users table with some constrains on email
CREATE TABLE "users" (
    "id" SERIAL,
    "email" VARCHAR(30) NOT NULL UNIQUE,
    "name" VARCHAR(100) NOT NULL,
    "role" VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

-- Insert data into user schema
INSERT INTO
    users (email, name, role)
VALUES
    ('fergorordo2@google.com', 'fernando2', 'admin'),
    ('sofidodda2@google.com', 'sofia2', 'boss');

-- Update data from user schema TIP: DISABLE AUTO-COMMIT
UPDATE
    "users"
SET
    "name" = 'Ferdinando',
    "role" = 'user'
WHERE
    "email" = 'fgorordo@google.com';

-- TIP: check where condition whit a select before try anything else
SELECT
    *
FROM
    "users"
WHERE
    "email" = 'fgorordo@google.com';

-- Get data from user schema
SELECT
    *
FROM
    "users";

-- Get data drom user schema with limits and offsets
SELECT
    *
FROM
    "users"
LIMIT
    1 OFFSET 2;

-- Get specific data from user schema
SELECT
    *
FROM
    "users"
WHERE
    "name" = 'sofia';

-- Get specific data from user schema with conditions
SELECT
    *
FROM
    "users"
WHERE
    "name" LIKE 's%';

-- Delete specific data from user schema
DELETE FROM
    "users"
WHERE
    "name" LIKE '_er%';

-- Create table;
CREATE TABLE users (name VARCHAR(100));

-- Drop Tables - Delete table with constrains;
DROP TABLE users;

-- Truncate Table - Purge all records on table;
TRUNCATE TABLE users;