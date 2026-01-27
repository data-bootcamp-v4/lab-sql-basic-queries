-- actividad 1
USE sakila;
SHOW TABLES; 

-- actividad 2
SELECT * 
FROM actor;

SELECT * 
FROM film;

SELECT * 
FROM customer;

-- actividad 3.1
SELECT title 
FROM film;

-- actividad 3.2
SELECT name AS language 
FROM language;

-- actividad 3.3

SELECT *
FROM staff;

SELECT first_name, last_name 
FROM staff;

-- actividad 4--
SELECT *
FROM film;

SELECT DISTINCT release_year 
FROM film;

-- actividad 5.1

SELECT COUNT(*) AS NUM_TIENDAS
FROM store;

-- actividad 5.2

SELECT COUNT(*) AS NUM_EMPLEADOS
FROM staff;

-- actividad 5.3
-- Total de items en inventario (disponibles para alquilar)
SELECT *
FROM inventory;

SELECT COUNT(*) AS POR_ALQUILAR 
FROM inventory;

-- Total de alquileres registrados (películas que han sido alquiladas al menos una vez)
SELECT *
FROM rental;

SELECT COUNT(*) AS ALQUILADAS 
FROM rental;

-- actividad 5.4
SELECT last_name
FROM actor;

SELECT COUNT(DISTINCT last_name) AS APELLIDO_DIFERENTES
FROM actor;

-- actividad 6
SELECT 
title, 
length 
FROM film 
ORDER BY length DESC 
LIMIT 10;

-- actividad 7.1
SELECT * 
FROM actor 
WHERE first_name = 'SCARLETT';

-- actividad 7.2

SELECT 
title,
length 
FROM film 
WHERE title LIKE '%ARMAGEDDON%' 
AND length > 100;

-- actividad 7.3

SELECT COUNT(*) AS Behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

