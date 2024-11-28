-- Utilice la base de datos sakila para realizar las siguientes tareas:
USE Sakila;
-- Mostrar todas las tablas disponibles en la base de datos de Sakila.

SHOW TABLES;

-- Recupere todos los datos de las tablas actor, film y customer.

SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;


-- Recupere las siguientes columnas de sus respectivas tablas:

-- 3.1 Títulos de todas las películas de la film tabla
SELECT title
FROM film;

-- 3.2 Lista de idiomas utilizados en películas, con la columna con el alias languagede la languagetabla
SELECT name AS "language from the language table"
FROM language;


-- 3.3 Lista de nombres de todos los empleados de la staff tabla

SELECT first_name
FROM staff;

-- Recuperar años de lanzamiento únicos.
SELECT DISTINCT release_year
FROM film;


-- Conteo de registros para obtener información de la base de datos:

-- 5.2 Determinar el número de empleados que tiene la empresa.
SELECT COUNT(staff_id)
FROM staff;

-- 5.3 Determinar cuántas películas están disponibles para alquilar y cuántas ya se han alquilado.

SELECT *
FROM rental;

-- 5.4 Determinar el número de apellidos distintos de los actores en la base de datos.

SELECT DISTINCT COUNT(last_name)
FROM actor;
-- Recupera las 10 películas más largas.

SELECT *
FROM film
ORDER BY length DESC
LIMIT 10;

-- Utilice técnicas de filtrado para:

-- 7.1 Recuperar todos los actores con el nombre "SCARLETT".
-- PRIMA:

SELECT *
FROM actor
WHERE first_name = "Scarlett";


-- 7.2 Recuperar todas las películas que tengan ARMAGEDDON en su título y tengan una duración mayor a 100 minutos.

SELECT *
FROM film
WHERE title LIKE "%Armageddon%" AND length > 100;


