-- Relations
-- One to One (Students -> Contact Info)
-- One to Many (Customers -> Orders)
-- Self joining relationships (Students - Students)
-- Many to Many (Students - [Enrollments] - Classes)

-- Keys types

-- Primary Key: 
--      Identifica el registro de forma única.
--      Una tabla puede tener varios identificadores únicos.
--      La llave primaria está basada en los requerimientos.
--      Ej: id: 1, id: asnda-313128as-odisugehqw-dlsajdp

-- Super Key:
--      Es un conjunto de atributos que puede identificar de forma única.     
--      Es un superconjunto de una clave candidata.
--      Ej: DNI + passport_number

-- Candidate Key:
--      Un atributo o conjunto de ellos que identifican de forma única.
--      Menos la llave primaria, los demás se consideran claves candidatas.
--      Ej: email, passport_number, 

-- Foreign Key:
--      Llaves foráneas son usadas para apuntar a la llave primaria de otra tabla.
--      El department_id en ambas tablas, deben ser del mismo tipo de datos y longitud.
--      Ej: Tabla employee = department_id: 1, Tabla department = id: 1

-- Composite Key:
--      Cuando una clave primaria consta de más de un atributo, se conoce como una clave compuesta.
--      Ej: employee_id + role + project_id;

SELECT * FROM country;

-- Adding PK from query
ALTER TABLE country ADD PRIMARY KEY (code);

-- Deleting this as homework
DELETE FROM country WHERE code2 = 'NA';

-- Constrains (Verificaciones en uno o varios campos)
SELECT * FROM country;
ALTER TABLE country ADD CHECK (surfacearea >= 0);

SELECT DISTINCT continent from country;
ALTER TABLE country ADD CHECK (
	(continent = 'Asia'::text) OR
	(continent = 'South America'::text) OR
	(continent = 'North America'::text) OR
	(continent = 'Oceania'::text) OR
	(continent = 'Antarctica'::text) OR
	(continent = 'Africa'::text) OR
	(continent = 'Europe'::text) OR
	(continent = 'Central America'::text)
);

UPDATE country SET continent = 'Central America' WHERE code = 'CRI';
SELECT * FROM country;
SELECT * FROM country WHERE code = 'CRI';

ALTER TABLE country DROP CONSTRAINT country_continent_check;