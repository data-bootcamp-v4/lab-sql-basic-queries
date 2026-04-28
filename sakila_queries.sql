USE sakila;

-- 1.  Mostrar tablas disponibles
SHOW TABLES;

-- 2. Datos completos de actor, film y customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Retrieve the following columns from their respective tables:
-- 3.1 Títulos de todas las películas
SELECT title 
FROM film; 

-- 3.2 Lista de idiomas
SELECT name AS language 
FROM language;

-- 3.3 Nombres de los empleados
SELECT first_name 
FROM staff;

-- 4. Años de lanzamiento únicos
SELECT DISTINCT release_year 
FROM film;

-- 5. Counting records for database insights:
-- 5.1 Numero de tiendas
SELECT COUNT(DISTINCT store_id) AS number_of_stores 
FROM store;

-- 5.2 Número de empleados
SELECT COUNT(DISTINCT staff_id) AS number_of_employees 
FROM staff;

-- 5.3 Películas disponibles y alquiladas
SELECT COUNT(DISTINCT film_id) AS films_available 
FROM film;

SELECT COUNT(*) AS films_rented 
FROM rental;

-- 5.4 Apellidos distintos de actores
SELECT COUNT(DISTINCT last_name) AS distinct_last_names 
FROM actor;

-- 6. Top 10 películas más largas
SELECT title 
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7. Use filtering tecniques
-- 7.1 Actores llamados SCARLETT
SELECT * FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 Películas con ARMAGEDDON en el título y más de 100 minutos
SELECT title, length 
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;

-- 7.3 Películas con contenido Behind the Scenes
SELECT COUNT(*) AS behind_the_scenes 
FROM film
WHERE special_features LIKE '%Behind the Scenes%';