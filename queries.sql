-- 1. Display all available tables in the sakila Database
SHOW TABLES IN sakila;

-- 2. Retrieve all data from the film table
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

-- 3. Titles of all films
SELECT title FROM sakila.film;
-- List of languages used in films, aliased as language
SELECT name AS language FROM sakila.language;
-- List of first names of all employees
SELECT first_name FROM sakila.staff;

-- 4. retrieve unique release years
SELECT DISTINCT release_year FROM sakila.film;

-- 5.1 Number of stores
SELECT COUNT(*) AS number_of_stores FROM sakila.store;
-- 5.2 Number of employees
SELECT COUNT(*) AS number_of_employees FROM sakila.staff;
-- 5.3 Number of films available for rent
SELECT COUNT(*) AS films_available_for_rent FROM sakila.inventory;
-- 5.3 Number of films rented
SELECT COUNT(*) AS films_rented FROM sakila.rental;
-- 5.4 Number of distinct last names of actors
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names FROM sakila.actor;

-- 6 Retrieve the 10 longest films.
SELECT title, length
FROM sakila.film
ORDER BY length DESC
LIMIT 10;

-- 7.1 Retrieve all actors with the first name "SCARLETT"
SELECT * FROM sakila.actor
WHERE first_name = 'SCARLETT';
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes
SELECT * FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;
-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) AS number_of_films_with_behind_the_scenes
FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%';


