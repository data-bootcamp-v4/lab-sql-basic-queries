-- 1 Display all available tables in the Sakila database.
USE sakila;
SHOW TABLES;

-- 2 Retrieve all the data from the tables actor, film and customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3 Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
SELECT Title FROM Film;
-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name AS language FROM language;

-- 3.3 List of first names of all employees
SELECT first_name FROM staff;


-- 4) Retrieve unique release years.
SELECT DISTINCT release_year
FROM film
ORDER BY release_year;

-- 5.1) Number of stores.
SELECT COUNT(*) AS num_stores
FROM store;

-- 5.2) Number of employees.
SELECT COUNT(*) AS num_employees
FROM staff;

-- 5.3) How many films are available for rent AND how many have been rented at least once.
-- Available for rent 
SELECT COUNT(DISTINCT film_id) AS films_available_for_rent
FROM inventory;

-- Rented at least once 
SELECT COUNT(DISTINCT i.film_id) AS films_rented
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id;

-- 5.4) Number of DISTINCT actor last names.
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;

-- 6) Retrieve the 10 longest films.
SELECT title, length
FROM film
ORDER BY length DESC, title ASC
LIMIT 10;

-- 7.1) All actors with first name "SCARLETT".
SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 BONUS) Movies with "ARMAGEDDON" in the title and duration > 100 minutes.
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

-- 7.3 BONUS) Number of films that include "Behind the Scenes" content.
-- (special_features es un SET; usamos FIND_IN_SET para buscar el valor)
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE FIND_IN_SET('Behind the Scenes', special_features) > 0;
