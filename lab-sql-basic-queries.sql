-- LAB | SQL Basic Queries
-- Base de datos: Sakila

USE sakila;

-- 1. Mostrar todas las tablas disponibles en la base de datos Sakila
SHOW TABLES;

-- 2. Recuperar todos los datos de las tablas actor, film y customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Recuperar columnas concretas de sus respectivas tablas
-- 3.1 Títulos de todas las películas
SELECT title FROM film;

-- 3.2 Lista de idiomas usados en las películas, con la columna renombrada como "language"
SELECT name AS language FROM language;

-- 3.3 Nombres de todos los empleados
SELECT first_name FROM staff;

-- 4. Años de estreno únicos
SELECT DISTINCT release_year FROM film;

-- 5. Contar registros
-- 5.1 Número de tiendas de la empresa
SELECT COUNT(*) AS number_of_stores FROM store;

-- 5.2 Número de empleados de la empresa
SELECT COUNT(*) AS number_of_employees FROM staff;

-- 5.3 Películas disponibles para alquilar y películas que se han alquilado
SELECT COUNT(*) AS films_available FROM film;
SELECT COUNT(*) AS films_rented FROM rental;

-- 5.4 Número de apellidos distintos de los actores
SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM actor;

-- 6. Las 10 películas más largas
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7. Filtrado
-- 7.1 Todos los actores con el nombre "SCARLETT"
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- BONUS
-- 7.2 Películas con ARMAGEDDON en el título y duración superior a 100 minutos
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

-- 7.3 Número de películas que incluyen contenido "Behind the Scenes"
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
