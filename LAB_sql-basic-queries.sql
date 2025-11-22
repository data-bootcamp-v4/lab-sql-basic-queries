USE sakila;
SHOW TABLES;
-- Recuperar todos los Datos
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- Selección de Columnas Específicas
-- TITULOS
SELECT title FROM film;

-- Cambiar nombre
SELECT name FROM language;
SELECT name AS language
FROM language;

-- Primer nombre empleados
SELECT first_name FROM staff;

-- Valores únicos
SELECT DISTINCT release_year
FROM film;

-- Conteo de registros
 -- Tiendas
 SELECT COUNT(*) FROM store;
 -- Empleados
  SELECT COUNT(*) FROM staff;
 -- Pelis disponible
   SELECT COUNT(DISTINCT film_id) FROM inventory;
 -- Alquileres 
    SELECT COUNT(*) FROM rental;
 -- Apellidos distintos
    SELECT COUNT(DISTINCT last_name) FROM actor;

-- Los 10 vídeos más largos
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- Filtrar datos
SELECT * FROM actor
WHERE first_name = 'SCARLETT';

SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT COUNT(*) FROM film
WHERE special_features LIKE '%Behind the Scenes%';

