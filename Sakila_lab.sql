-- Mostrar tablas
SHOW TABLES;

-- Recuperar todos los datos de las tablas actor, film y customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;


-- Títulos de todas las películas de la tabla film
SELECT title FROM film;

-- Lista de idiomas utilizados en películas, con el alias language de la tabla language
SELECT name AS language FROM language;
-- Lista de nombres de todos los empleados de la tabla staff
SELECT first_name, last_name FROM staff;

-- Recuperar años de lanzamiento únicos.
SELECT DISTINCT release_year FROM film;
-- 5.1 Determinar el número de tiendas que tiene la empresa.
SELECT COUNT(*) AS number_of_stores FROM store;

-- 5.2 Determinar el número de empleados que tiene la empresa.

SELECT COUNT(*) AS number_of_employees FROM staff;

-- 5.3 Determinar cuántas películas están disponibles para alquilar y cuántas ya se han alquilado.
 SELECT COUNT(*) AS films_available_for_rent FROM inventory;

-- 5.4 Determinar el número de apellidos distintos de los actores en la base de datos.
SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM actor;

-- 6 Recupera las 10 películas más largas.
SELECT title, length 
FROM film 
ORDER BY length DESC 
LIMIT 10;
-- 7.1 7.1 Recuperar todos los actores con el nombre "SCARLETT"
SELECT first_name, last_name 
FROM actor 
WHERE first_name = 'SCARLETT';

-- 7.2 Recuperar todas las películas que tengan ARMAGEDDON en su título y tengan una duración mayor a 100 minutos.
SELECT title, length 
FROM film 
WHERE title LIKE '%ARMAGEDDON%' 
AND length > 100;
-- 7.3 Determinar el número de películas que incluyen contenido detrás de escena
SELECT COUNT(*) AS films_with_behind_the_scenes 
FROM film 
WHERE special_features LIKE '%Behind the Scenes%';





