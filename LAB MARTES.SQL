-- 1 Mostrar todas las tablas disponibles en la base de datos de Sakila
SHOW TABLES;

-- 2 Recuperar todos los datos de las tablas actor, peliculas y cliente.
SELECT * 
FROM actor;

SELECT * 
FROM film;

SELECT *
FROM customer;

-- 3 Recuperar titulo, idiomas y nombre de empleados
SELECT title
FROM film;

SELECT * 
FROM language;

SELECT name
FROM language;

SELECT first_name
FROM staff;

-- 4 Recuperar años de lanzamiento
SELECT DISTINCT release_year
FROM film;

-- 5 Contar registros de tiendas, empleados, peliculas y apellidos distintos de actores.
SELECT COUNT(*) AS num_stores
FROM store;

SELECT COUNT(*) AS num_employees
FROM staff;

SELECT COUNT(*) AS available_films
FROM film
WHERE film_id NOT IN (SELECT film_id FROM rental);

SELECT COUNT(*) AS rented_films
FROM rental;

SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;

-- 6 Recuperar las 10 peliculas mas largas

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7 Filtrar por apellido y por nombre de pelicula

SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

SELECT COUNT(*) AS behind_the_scenes_count
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
