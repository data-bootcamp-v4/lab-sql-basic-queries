-- Use the Sakila database
USE sakila;

-- 1️⃣ Display all available tables
SHOW TABLES;

-- 2️⃣ Retrieve all data from actor, film, and customer tables
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3️⃣ Retrieve specific columns
-- 3.1 Titles of all films
SELECT title FROM film;

-- 3.2 List of languages used in films, aliased as 'language'
SELECT name AS language FROM language;

-- 3.3 List of first names of all employees
SELECT first_name FROM staff;

-- 4️⃣ Retrieve unique release years
SELECT DISTINCT release_year FROM film;

-- 5️⃣ Counting records for database insights
-- 5.1 Determine the number of stores
SELECT COUNT(*) AS total_stores FROM store;

-- 5.2 Determine the number of employees
SELECT COUNT(*) AS total_employees FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented
SELECT 
    (SELECT COUNT(*) FROM inventory) AS available_for_rent,
    (SELECT COUNT(*) FROM rental) AS rented_films;

-- 5.4 Determine the number of distinct last names of actors
SELECT COUNT(DISTINCT last_name) AS unique_actor_last_names FROM actor;

-- 6️⃣ Retrieve the 10 longest films
SELECT title, length 
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7️⃣ Filtering techniques
-- 7.1 Retrieve all actors with the first name "SCARLETT"
SELECT * FROM actor 
WHERE first_name = 'SCARLETT';

-- 7.2 BONUS: Retrieve all movies with "ARMAGEDDON" in the title and duration > 100 minutes
SELECT * FROM film 
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3 BONUS: Determine the number of films that include "Behind the Scenes" content
SELECT COUNT(*) AS films_with_BTS
FROM film 
WHERE special_features LIKE '%Behind the Scenes%';
