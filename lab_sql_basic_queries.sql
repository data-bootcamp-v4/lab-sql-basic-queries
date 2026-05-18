-- LAB | SQL Basic Queries
-- Database: Sakila
-- Description: Revised solutions based on feedback.
-- Notes:
--   - SQL keywords are written in uppercase for consistency.
--   - Each exercise is separated with clear comments.
--   - Exercise 5.3 distinguishes between available film titles and rented film titles.

USE sakila;

-- =========================================================
-- 1. Display all available tables in the Sakila database
-- =========================================================

SHOW TABLES;


-- =========================================================
-- 2. Retrieve all data from actor, film and customer
-- =========================================================

SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;


-- =========================================================
-- 3. Retrieve selected columns from their respective tables
-- =========================================================

-- 3.1 Titles of all films from the film table
SELECT title
FROM film;

-- 3.2 List of languages used in films, aliased as language
SELECT name AS language
FROM language;

-- 3.3 First names of all employees from the staff table
SELECT first_name
FROM staff;


-- =========================================================
-- 4. Retrieve unique release years
-- =========================================================

SELECT DISTINCT release_year
FROM film
ORDER BY release_year;


-- =========================================================
-- 5. Counting records for database insights
-- =========================================================

-- 5.1 Number of stores
SELECT COUNT(*) AS number_of_stores
FROM store;

-- 5.2 Number of employees
SELECT COUNT(*) AS number_of_employees
FROM staff;

-- 5.3 a) Number of distinct film titles available for rent
-- The inventory table contains physical copies.
-- COUNT(DISTINCT film_id) counts the unique film titles that are available.
SELECT COUNT(DISTINCT film_id) AS distinct_films_available_for_rent
FROM inventory;

-- 5.3 b) Number of distinct film titles that have been rented
-- The rental table records rental transactions.
-- Joining rental with inventory allows us to count the unique film titles rented.
SELECT COUNT(DISTINCT inventory.film_id) AS distinct_films_rented
FROM rental
JOIN inventory
    ON rental.inventory_id = inventory.inventory_id;

-- 5.4 Number of distinct actor last names
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;


-- =========================================================
-- 6. Retrieve the 10 longest films
-- =========================================================

SELECT title,
       length
FROM film
ORDER BY length DESC
LIMIT 10;


-- =========================================================
-- 7. Filtering techniques
-- =========================================================

-- 7.1 Retrieve all actors with the first name SCARLETT
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';


-- =========================================================
-- BONUS
-- =========================================================

-- 7.2 Movies with ARMAGEDDON in the title and duration longer than 100 minutes
SELECT title,
       length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

-- 7.3 Number of films that include Behind the Scenes content
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
