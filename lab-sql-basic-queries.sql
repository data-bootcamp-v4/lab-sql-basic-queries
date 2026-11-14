-- EJERCICIO 1
-- Mostrar todas las tablas de la base de datos Sakila

USE sakila;

SHOW TABLES;

-- EJERCICIO 2
-- Recuperar todos los datos de las tablas actor, film y customer

SELECT * FROM actor;

SELECT * FROM film;

SELECT * FROM customer;

-- EJERCICIO 3.1
-- Mostrar los títulos de todas las películas

SELECT title
FROM film;

-- EJERCICIO 3.2
-- Mostrar los idiomas con el alias language

SELECT name AS language
FROM language;
-- EJERCICIO 3.3
-- Mostrar los nombres de todos los empleados

SELECT first_name
FROM staff;

-- EJERCICIO 4
-- Mostrar los años de lanzamiento sin repetir

SELECT DISTINCT release_year
FROM film;

-- Comprobación:
-- Todas las películas de la base de datos Sakila tienen
-- el año de lanzamiento 2006.
-- Por eso, DISTINCT devuelve un único resultado: 2006.

-- EJERCICIO 5.1
-- Contar el número de tiendas de la empresa

SELECT COUNT(*) AS total_tiendas
FROM store;

-- EJERCICIO 5.2
-- Contar el número de empleados de la empresa

SELECT COUNT(*) AS total_empleados
FROM staff;

-- EJERCICIO 5.3
-- Contar las películas del catálogo y las copias registradas en inventario

SELECT COUNT(*) AS total_peliculas
FROM film;

SELECT COUNT(*) AS total_copias
FROM inventory;

-- Contar el número de alquileres realizados

SELECT COUNT(*) AS total_alquileres
FROM rental;

-- EJERCICIO 5.4
-- Contar el número de apellidos diferentes de los actores

SELECT COUNT(DISTINCT last_name) AS apellidos_diferentes
FROM actor;

-- EJERCICIO 6
-- Mostrar las 10 películas de mayor duración

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- EJERCICIO 7.1
-- Buscar los actores cuyo nombre sea SCARLETT

SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- EJERCICIO 7.2 (BONUS)
-- Buscar películas que contengan ARMAGEDDON en el título
-- y cuya duración sea superior a 100 minutos

SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;

-- EJERCICIO 7.3 (BONUS)
-- Contar las películas que incluyen contenido Behind the Scenes

SELECT COUNT(*) AS total_peliculas
FROM film
WHERE FIND_IN_SET('Behind the Scenes', special_features) > 0;



