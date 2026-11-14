
-- =====================================================
-- LAB | SQL BASIC QUERIES
-- Base de datos: Sakila
-- =====================================================


-- EJERCICIO 1
-- Seleccionar la base de datos Sakila y mostrar
-- todas las tablas que contiene.

USE sakila;

SHOW TABLES;


-- =====================================================
-- EJERCICIO 2
-- Recuperar todos los registros y todas las columnas
-- de las tablas actor, film y customer.
-- =====================================================

-- 2.1 Mostrar todos los actores.
SELECT *
FROM actor;

-- 2.2 Mostrar todas las películas.
SELECT *
FROM film;

-- 2.3 Mostrar todos los clientes.
SELECT *
FROM customer;


-- =====================================================
-- EJERCICIO 3
-- Recuperar columnas específicas de distintas tablas.
-- =====================================================

-- 3.1 Mostrar únicamente los títulos de las películas.
SELECT title
FROM film;

-- 3.2 Mostrar los nombres de los idiomas.
-- Utilizar el alias "language" para la columna.
SELECT name AS language
FROM language;

-- 3.3 Mostrar los nombres de pila de los empleados.
SELECT first_name
FROM staff;


-- =====================================================
-- EJERCICIO 4
-- Obtener los años de estreno de las películas
-- sin mostrar valores duplicados.
-- =====================================================

SELECT DISTINCT release_year
FROM film;


-- =====================================================
-- EJERCICIO 5
-- Utilizar funciones de agregación para contar datos.
-- =====================================================

-- 5.1 Contar cuántas tiendas existen.
SELECT COUNT(*) AS total_tiendas
FROM store;


-- 5.2 Contar cuántos empleados existen.
SELECT COUNT(*) AS total_empleados
FROM staff;


-- 5.3 Analizar las películas disponibles para alquiler
-- y las que se han alquilado.
-- IMPORTANTE: distinguir copias, títulos y alquileres.

-- 5.3.1 Contar las copias registradas en inventario.
SELECT COUNT(*)
FROM inventory;

-- 5.3.2 Contar las copias distintas que se han
-- alquilado alguna vez.
SELECT COUNT(DISTINCT inventory_id)
FROM rental;

-- 5.3.3 Comprobar cómo se relacionan los alquileres
-- con el inventario mediante INNER JOIN.
-- Mostrar únicamente 5 filas como ejemplo.
SELECT *
FROM rental
INNER JOIN inventory
    ON rental.inventory_id = inventory.inventory_id
LIMIT 5;

-- 5.3.4 Contar los títulos diferentes que
-- se han alquilado alguna vez.
SELECT COUNT(DISTINCT inventory.film_id)
    AS total_peliculas_alquiladas
FROM rental
INNER JOIN inventory
    ON rental.inventory_id = inventory.inventory_id;

-- 5.3.5 Contar los títulos diferentes
-- que tienen copias en el inventario.
SELECT COUNT(DISTINCT film_id)
FROM inventory;


-- 5.4 Contar cuántos apellidos diferentes
-- existen entre los actores.
SELECT COUNT(DISTINCT last_name)
FROM actor;


-- =====================================================
-- EJERCICIO 6
-- Mostrar las 10 películas de mayor duración.
-- Ordenarlas de mayor a menor utilizando DESC.
-- Limitar los resultados a 10 registros.
-- =====================================================

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;


-- =====================================================
-- EJERCICIO 7
-- Filtrar registros utilizando WHERE.
-- =====================================================

-- 7.1 Encontrar todos los actores cuyo
-- nombre sea SCARLETT.
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';


-- 7.2 BONUS
-- Encontrar las películas cuyo título contenga
-- ARMAGEDDON y cuya duración supere los 100 minutos.
-- Ambas condiciones deben cumplirse (AND).
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;


-- 7.3 BONUS
-- Contar cuántas películas incluyen el contenido
-- especial "Behind the Scenes".
SELECT COUNT(*)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
