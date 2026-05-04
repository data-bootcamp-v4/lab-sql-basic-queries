USE sakila;

-- 1.Display tables
SHOW TABLES;

-- 2. Retrieve data from actor, film and customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.1 Retrieve columns from tables: Titles of all films
SELECT title FROM film;

-- 3.2 Retrieve columns from tables: List of languages with alias
SELECT name AS language FROM language;

-- 3.3 Retrieve columns from tables: First names of all employees
SELECT first_name FROM staff;

-- 4. Retrieve unique release years
SELECT DISTINCT release_year FROM film;

-- 5.1 Determine the number of stores that the company has
SELECT COUNT(*) AS number_of_stores
FROM store;

-- 5.2 Determine the number of employees that the company has
SELECT COUNT(*) AS number_of_employees
FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented
SELECT COUNT(*) AS films_available_for_rent
FROM inventory;

SELECT COUNT(*) AS films_rented
FROM rental;

-- 5.4 Determine the number of distinct last names of the actors in the database
SELECT COUNT(DISTINCT last_name) AS distinct_last_names_of_actors
FROM actor;
-- 6. Retrieve the 10 longest films
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1 Retrieve all actors with the first name "SCARLETT"
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length >100;

-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
