-- ==========================================================
-- Lab · SQL Basic Queries (Sakila)
-- Objetivo: rellenar cada apartado con tu query (sin resolver aquí)
-- ==========================================================

USE sakila;

-- ==========================================================
-- 1) Display all available tables in the Sakila database
-- ==========================================================

-- TODO: escribe aquí tu query:

SHOW TABLES;

-- ==========================================================
-- 2) Retrieve all the data from the tables actor, film and customer
-- ==========================================================

-- TODO: actor

SELECT *
FROM actor;

-- TODO: film

SELECT *
FROM film;

-- TODO: customer

SELECT *
FROM customer;

-- ==========================================================
-- 3) Retrieve specific columns (selección de columnas)
-- ==========================================================

-- 3.1 Titles of all films from the film table
-- TODO:
SELECT 
	title
FROM film;

-- 3.2 List of languages used in films, aliased as language (from language table)
-- TODO:

SELECT *
FROM language;

-- 3.3 List of first names of all employees from the staff table
-- TODO:

SELECT first_name
FROM staff;

-- ==========================================================
-- 4) Retrieve unique release years
-- ==========================================================

-- TODO:

SELECT 
	DISTINCT release_year
FROM film;


-- ==========================================================
-- 5) COUNT y DISTINCT (cuántos valores / cuántos únicos)
-- ==========================================================

-- 5.1 Determine the number of stores that the company has
-- TODO:

SELECT COUNT(store_id) as number_of_stores
FROM store;

-- 5.2 Determine the number of employees that the company has
-- TODO:

SELECT COUNT(staff_id) as number_of_employees
FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented
-- TODO:

SELECT 
	COUNT(DISTINCT film_id) as films_available_for_rent
FROM inventory;

SELECT
	COUNT(DISTINCT inventory_id) as copies_rented
FROM rental;


-- 5.4 Determine the number of distinct last names of the actors in the database
-- TODO:

SELECT 
	COUNT(DISTINCT last_name) as number_of_distinct_last_names
FROM actor;

-- ==========================================================
-- 6) ORDER BY y LIMIT (top-N): Retrieve the 10 longest films
-- ==========================================================

-- TODO:

SELECT
	title,
	length
FROM film
ORDER BY length DESC
LIMIT 10;


-- ==========================================================
-- 7) WHERE (filtrar filas) · LIKE / IN / AND / OR
-- ==========================================================

-- 7.1 Retrieve all actors with the first name "SCARLETT"
-- TODO:

SELECT
	first_name,
    last_name
FROM actor
WHERE first_name IN ('SCARLETT');

-- BONUS 7.2 Retrieve all movies with ARMAGEDDON in the title and duration > 100
-- Hint: LIKE
-- TODO:

SELECT
	title,
    length
FROM film
WHERE title LIKE '%armageddon%' AND length > 100
ORDER BY length;

-- BONUS 7.3 Determine the number of films that include Behind the Scenes content
-- TODO:

SELECT
	COUNT(DISTINCT film_id) as num_films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%behind the scenes%';

