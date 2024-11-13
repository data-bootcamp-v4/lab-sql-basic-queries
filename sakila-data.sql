USE SAKILA

-- 1. Mostrar todas las tablas disponibles en la base de datos de Sakila.

SHOW TABLES; 

-- 2. Recupere todos los datos de las tablas actor, film y customer.

SELECT * FROM actor;
SELECT * FROM customer;
SELECT * FROM film;

-- 3. Recupere los nombres y apellidos de todos los actores.

SELECT first_name, last_name FROM actor;

-- 3.1 Títulos de todas las películas de la film tabla

SELECT title FROM film;

-- 3.2 Lista de idiomas utilizados en películas, con la columna con el alias language de la language tabla

SELECT name AS language FROM language; 

-- 3.3 Lista de nombres de todos los empleados de la staff tabla

SELECT first_name FROM staff;

-- 4 Recuperar años de lanzamiento únicos.

SELECT DISTINCT release_year FROM film;

-- 5 Conteo de registros para obtener información de la base de datos:

SELECT COUNT(*) FROM actor;

-- 5.1 Determinar el número de tiendas que tiene la empresa.

SELECT COUNT(*) FROM store;

-- 5.2 Determinar el número de empleados que tiene la empresa.

SELECT COUNT(*) FROM staff;

-- 5.3 Determinar cuántas películas están disponibles para alquilar y cuántas ya se han alquilado.

SELECT COUNT(*) FROM inventory;

SELECT COUNT(*) FROM rental;

-- 5.4 Determinar el número de apellidos distintos de los actores en la base de datos.

SELECT COUNT(DISTINCT last_name) FROM actor;

-- 6 Recupera las 10 películas más largas.

SELECT * FROM film ORDER BY length DESC LIMIT 10;

-- 7 Utilice técnicas de filtrado para:

-- 7.1 Recuperar todos los actores con el nombre "SCARLETT".

SELECT * FROM actor WHERE first_name = 'SCARLETT';

-- 7.2 Recuperar todas las películas que tengan ARMAGEDDON en su título y tengan una duración mayor a 100 minutos.

SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3 Determinar el número de películas que incluyen contenido detrás de escena

SELECT COUNT(*) FROM film WHERE special_features LIKE '%Behind the Scenes%';
