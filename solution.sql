-- USE SAKILA DATABASE
USE sakila;

-- CHALLENGE 1: Display all available tables
-- Useful for an initial audit of the database structure
SHOW TABLES;

-- CHALLENGE 2: Retrieve all data from specific tables
-- Extracting full datasets from actor, film, and customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- CHALLENGE 3: Retrieve specific columns
-- 3.1 Titles of all films
SELECT title FROM film;

-- 3.2 List of languages (with alias)
SELECT name AS language FROM language;

-- 3.3 List of first names of all employees
SELECT first_name FROM staff;

-- CHALLENGE 4: Unique release years
-- Identifying the time range of the movie catalog
SELECT DISTINCT release_year FROM film;

-- CHALLENGE 5: Counting records for business insights
-- 5.1 Number of stores
SELECT COUNT(*) FROM store;

-- 5.2 Number of employees
SELECT COUNT(*) FROM staff;

-- 5.3 Available inventory vs total rentals
SELECT COUNT(*) FROM inventory; -- Physical copies
SELECT COUNT(*) FROM rental;    -- Total transactions

-- 5.4 Number of distinct actor last names
SELECT COUNT(DISTINCT last_name) FROM actor;

-- CHALLENGE 6: Top 10 longest films
-- Sorting by duration in descending order
SELECT title, length FROM film 
ORDER BY length DESC 
LIMIT 10;

-- CHALLENGE 7: Filtering techniques
-- 7.1 Search for actors named SCARLETT
SELECT * FROM actor WHERE first_name = 'SCARLETT';

-- BONUS CHALLENGES
-- 7.2 Search by keyword and duration
SELECT * FROM film 
WHERE title LIKE '%ARMAGEDDON%' 
AND length > 100;

-- 7.3 Count films with special features
SELECT COUNT(*) FROM film 
WHERE special_features LIKE '%Behind the Scenes%';