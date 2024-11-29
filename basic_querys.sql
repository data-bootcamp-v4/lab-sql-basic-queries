-- 1 Mostrar todas las tablas disponibles en la base de datos Sakila:
SHOW TABLES;

-- 2 Recuperar todos los datos de las tablas actor, film y customer:

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3 Recuperar las siguientes columnas de las tablas correspondientes:3.1 Títulos de todas las películas de la tabla film
SELECT title FROM film;
-- 3.2 Lista de idiomas usados en las películas, con la columna alias language de la tabla 
SELECT name AS language FROM language;
-- 3.3 Lista de primeros nombres de todos los empleados de la tabla staff:
SELECT first_name FROM staff;
-- 4 Recuperar los años de estreno únicos:
SELECT DISTINCT release_year FROM film;
-- 5 Contar registros para obtener información sobre la base de datos:
-- 5.1 Determinar el número de tiendas que tiene la empresa:
SELECT COUNT(*) FROM store;
-- 5.2 Determinar el número de empleados que tiene la empresa:
SELECT COUNT(*) FROM staff;
-- 5.3 Determinar cuántas películas están disponibles para alquilar y cuántas han sido alquiladas:
SELECT COUNT(*) AS available_films
FROM film
WHERE film_id NOT IN (SELECT film_id FROM inventory WHERE inventory_id NOT IN (SELECT inventory_id FROM rental));

SELECT COUNT(*) AS rented_films
FROM film
WHERE film_id IN (SELECT film_id FROM inventory WHERE inventory_id IN (SELECT inventory_id FROM rental));
-- 5.4 Determinar el número de apellidos distintos de los actores en la base de datos:
SELECT COUNT(DISTINCT last_name) FROM actor;
-- 6 Recuperar las 10 películas más largas:
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;
-- Usar técnicas de filtrado para:
-- 7.1 Recuperar todos los actores con el primer nombre "SCARLETT":
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';
-- BONUS: Recuperar todas las películas que tienen "ARMAGEDDON" en el título y tienen una duración mayor a 100 minutos:
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
-- BONUS: Determinar el número de películas que incluyen contenido "Behind the Scenes":
SELECT COUNT(*)
FROM film
WHERE description LIKE '%Behind the Scenes%';
