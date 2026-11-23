USE sakila;
SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- 3.1 Títulos de todas las películas
SELECT title
FROM film;

-- 3.2 Idiomas con el alias language
SELECT name AS language
FROM language;

-- 3.3 Nombres de pila de los empleados
SELECT first_name
FROM staff;
-- 4. Años de lanzamiento únicos
SELECT DISTINCT release_year
FROM film;
-- 5.1 Número de tiendas
SELECT COUNT(*) AS number_of_stores
FROM store;

-- 5.2 Número de empleados
SELECT COUNT(*) AS number_of_employees
FROM staff;

-- 5.3 Número de películas disponibles ahora
SELECT COUNT(DISTINCT i.film_id) AS films_available_to_rent
FROM inventory AS i
WHERE NOT EXISTS (
    SELECT 1
    FROM rental AS r
    WHERE r.inventory_id = i.inventory_id
      AND r.return_date IS NULL
);

-- Número de películas alquiladas alguna vez
SELECT COUNT(DISTINCT i.film_id) AS films_ever_rented
FROM rental AS r
JOIN inventory AS i ON i.inventory_id = r.inventory_id;

-- 5.4 Apellidos distintos de actores
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;
-- 6. Las 10 películas más largas
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1 Actores llamados SCARLETT
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 Películas con ARMAGEDDON en el título y más de 100 minutos
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

-- 7.3 Número de películas con contenido detrás de cámaras
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE FIND_IN_SET('Behind the Scenes', special_features) > 0;