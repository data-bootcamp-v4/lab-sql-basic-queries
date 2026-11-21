-- =====================================================
-- LAB | SQL Basic Queries  (base de datos: sakila)
-- =====================================================
USE sakila;

-- 1. Mostrar todas las tablas de la base de datos
SHOW TABLES;

-- 2. Todos los datos de las tablas actor, film y customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.1 Títulos de todas las películas
SELECT title FROM film;

-- 3.2 Idiomas, con la columna renombrada como "language"
SELECT name AS language FROM language;

-- 3.3 Nombres de todos los empleados
SELECT first_name FROM staff;

-- 4. Años de estreno distintos
SELECT DISTINCT release_year FROM film;

-- 5.1 Número de tiendas
SELECT COUNT(*) AS number_of_stores FROM store;

-- 5.2 Número de empleados
SELECT COUNT(*) AS number_of_employees FROM staff;

-- 5.3 Películas disponibles para alquilar (copias en inventario) y películas alquiladas
SELECT COUNT(*) AS films_available FROM inventory;
SELECT COUNT(*) AS films_rented FROM rental;

-- 5.4 Número de apellidos distintos de actores
SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM actor;

-- 6. Las 10 películas más largas
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1 Actores que se llaman SCARLETT
SELECT * FROM actor
WHERE first_name = 'SCARLETT';

-- BONUS 7.2 Películas con ARMAGEDDON en el título y más de 100 minutos
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

-- BONUS 7.3 Número de películas con contenido "Behind the Scenes"
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
