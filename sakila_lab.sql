-- Display all available tables in the Sakila database.
USE Sakila;
SHOW TABLES;

-- 2. Retrieve All Data from actor, film, and customer Tables
-- All data from actor table
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Retrieve Specific Columns from Their Respective Tables
-- 3.1. Titles of all films from the film table:
SELECT title FROM film;
-- 3.2. List of languages used in films, aliased as language from the language table:
SELECT name AS language FROM language;
-- 3.3. List of first names of all employees from the staff table:
SELECT first_name FROM staff;

-- 4. Retrieve Unique Release Years
-- Retrieve unique release years from the film table:
SELECT DISTINCT release_year FROM film;
-- 5. Counting Records for Database Insights
-- 5.1. Determine the number of stores the company has:
SELECT COUNT(*) AS number_of_stores FROM store;
-- 5.2. Determine the number of employees the company has:
SELECT COUNT(*) AS number_of_employees FROM staff;
-- 5.3. Determine how many films are available for rent and how many have been rented:
-- Number of films available for rent
SELECT COUNT(*) AS available_films FROM film;
-- Number of films that have been rented
SELECT COUNT(DISTINCT inventory_id) AS rented_films FROM rental;

-- 5.4. Determine the number of distinct last names of the actors in the database:
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names FROM actor;

-- 6. Retrieve the 10 Longest Films
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1. Retrieve all actors with the first name "SCARLETT":
SELECT * FROM actor
WHERE first_name = 'SCARLETT';

-- BONUS
-- 7.2. Retrieve all movies that have "ARMAGEDDON" in their title
-- and have a duration longer than 100 minutes:
SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3. Determine the number of films that include Behind the Scenes content:
-- This assumes the special_features column exists and contains relevant information.
SELECT COUNT(*) AS films_with_behind_the_scenes 
FROM film
WHERE special_features LIKE '%Behind the Scenes%';


