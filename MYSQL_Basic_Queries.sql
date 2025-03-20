-- Use the Sakila database
USE sakila;

-- 1. Display all available tables
SHOW TABLES;

-- 2. Retrieve all data from `actor`, `film`, and `customer` tables
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Retrieve specific columns from respective tables
-- 3.1 Titles of all films
SELECT title FROM film;

-- 3.2 List of languages used in films, aliased as 'language'
SELECT name AS language FROM language;

-- 3.3 List of first names of all employees from the `staff` table
SELECT first_name FROM staff;

-- 4. Retrieve unique release years
SELECT DISTINCT release_year FROM film;

-- 5. Counting records for insights
-- 5.1 Number of stores
SELECT COUNT(*) AS number_of_stores FROM store;

-- 5.2 Number of employees
SELECT COUNT(*) AS number_of_employees FROM staff;

-- 5.3 Number of films available for rent and number rented
SELECT COUNT(*) AS available_films FROM inventory;
SELECT COUNT(*) AS rented_films FROM rental;

-- 5.4 Number of distinct last names of actors
SELECT COUNT(DISTINCT last_name) AS unique_actor_last_names FROM actor;

-- 6. Retrieve the 10 longest films
SELECT title, length FROM film ORDER BY length DESC LIMIT 10;

-- 7. Filtering techniques
-- 7.1 Retrieve all actors with first name "SCARLETT"
SELECT * FROM actor WHERE first_name = 'SCARLETT';

-- BONUS:
-- 7.2 Retrieve movies that have "ARMAGEDDON" in the title and are longer than 100 minutes
SELECT title, length FROM film 
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3 Determine the number of films that include "Behind the Scenes" content
SELECT COUNT(*) AS behind_the_scenes_films FROM film
WHERE special_features LIKE '%Behind the Scenes%';
