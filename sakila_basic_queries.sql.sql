

USE sakila;
SELECT DATABASE();


-- ============================================================
-- 1. Display all available tables in the Sakila database
-- ============================================================

SHOW TABLES;


-- ============================================================
-- 2. Retrieve all data from actor, film, and customer
-- ============================================================

SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;


-- ============================================================
-- 3. Retrieve specific columns
-- ============================================================

-- 3.1 Titles of all films
SELECT title
FROM film;


-- 3.2 List of languages used in films
-- Alias the name column as language
SELECT name AS language
FROM language;


-- 3.3 First names of all employees
SELECT first_name
FROM staff;


-- ============================================================
-- 4. Retrieve unique release years
-- ============================================================

SELECT DISTINCT release_year
FROM film;


-- ============================================================
-- 5. Counting records for database insights
-- ============================================================

-- 5.1 Number of stores
SELECT COUNT(*) AS number_of_stores
FROM store;


-- 5.2 Number of employees
SELECT COUNT(*) AS number_of_employees
FROM staff;


-- 5.3 Number of film copies available for rent
-- The inventory table contains the film copies owned by the stores
SELECT COUNT(*) AS films_available_for_rent
FROM inventory;


-- 5.3 Number of rental transactions
-- Each row in the rental table represents a film rental
SELECT COUNT(*) AS films_rented
FROM rental;


-- 5.4 Number of distinct actor last names
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;


-- ============================================================
-- 6. Retrieve the 10 longest films
-- ============================================================

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;


-- ============================================================
-- 7. Filtering techniques
-- ============================================================

-- 7.1 Actors with the first name SCARLETT
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';


-- ============================================================
-- BONUS
-- ============================================================

-- 7.2 Movies containing ARMAGEDDON in the title
-- and longer than 100 minutes
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;


-- 7.3 Number of films containing Behind the Scenes content
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';