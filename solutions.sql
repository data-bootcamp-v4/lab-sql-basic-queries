USE sakila;

-- 1. Mostrar todas las tablas
SHOW TABLES;

-- 2. Todos los datos de actor, film y customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Títulos, idiomas y nombres del personal
-- 3.1 Títulos de las películas
SELECT title FROM film;

-- 3.2 Nombres de los idiomas (columna renombrada como language)
SELECT name AS language FROM language;

-- 3.3 Nombre de pila del personal
SELECT first_name FROM staff;

-- 4. Años de lanzamientos únicos
SELECT DISTINCT release_year FROM film;

-- 5. Contar
-- 5.1 Número de tiendas
SELECT COUNT(*) AS total_stores FROM store;

-- 5.2 Número de empleados
SELECT COUNT(*) AS total_staff FROM staff;

-- 5.3 Películas disponibles para alquilar vs. alquiladas
SELECT COUNT(*) AS available_films FROM film;
-- Más preciso: solo títulos con al menos una copia en inventario (958)
-- SELECT COUNT(DISTINCT film_id) AS available_films FROM inventory;
SELECT COUNT(*) AS rented_films FROM rental;

-- 5.4 Apellidos distintos de los actores
SELECT COUNT(DISTINCT last_name) AS distinct_last_name FROM actor;

-- 6. Las 10 películas más largas
SELECT title, length FROM film ORDER BY length DESC LIMIT 10;

-- 7. Filtrar
-- 7.1 Actrices que se llaman SCARLETT
SELECT * FROM actor WHERE first_name = 'SCARLETT';

-- 7.2 Películas con ARMAGEDDON en el título y más de 100 minutos
SELECT title, length FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3 Número de películas con contenido Behind the Scenes
SELECT COUNT(*) AS behind_the_scenes_films FROM film WHERE special_features LIKE '%Behind the Scenes%';