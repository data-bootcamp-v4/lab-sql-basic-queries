USE sakila;

-- 1) Mostrar todas las tablas de la base de datos Sakila
SHOW FULL TABLES;

-- 2) Recuperar todos los datos de actor, film y customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.1 Títulos de todas las películas
SELECT title
FROM film;

-- 3.2 Lista de idiomas usados en películas con alias
SELECT name AS language
FROM language;

-- 3.3 Lista de nombres de todos los empleados
SELECT first_name
FROM staff;

-- 4) Años de lanzamiento únicos
SELECT DISTINCT release_year
FROM film;

-- 5.1 Número de tiendas
SELECT COUNT(*) AS number_of_stores
FROM store;

-- 5.2 Número de empleados
SELECT COUNT(*) AS number_of_employees
FROM staff;

-- 5.3 Cuántas películas están disponibles para alquilar y cuántas han sido alquiladas
SELECT COUNT(*) AS films_available_for_rent
FROM inventory;

SELECT COUNT(*) AS films_rented
FROM rental;

-- 5.4 Número de apellidos distintos de actores
SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

-- 6) Las 10 películas más largas
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1 Actores con nombre "SCARLETT"
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 Películas con ARMAGEDDON en el título y duración mayor que 100
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

-- 7.3 Número de películas que incluyen "Behind the Scenes"
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';