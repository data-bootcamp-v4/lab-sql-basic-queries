USE sakila;

-- Display all available tables in the Sakila database.
SHOW TABLES;

-- Retrieve all the data from the tables actor, film, and customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- Retrieve specific columns from various tables:
SELECT title FROM film;

-- List of languages used in films, aliased as language from the language table
SELECT name AS language FROM language;

-- List of first names of all employees from the staff table
SELECT first_name FROM staff;

-- Retrieve unique release years from the film table
SELECT DISTINCT release_year FROM film;

-- Counting records for database insights:
-- Determine the number of stores that the company has
SELECT COUNT(*) AS store_count FROM store;

-- Determine the number of employees that the company has
SELECT COUNT(*) AS employee_count FROM staff;

-- Determine how many films are available for rent and how many have been rented
SELECT COUNT(*) AS available_films FROM inventory;
SELECT COUNT(*) AS rented_films FROM rental;

-- Determine the number of distinct last names of the actors in the database
SELECT COUNT(DISTINCT last_name) AS unique_actor_last_names FROM actor;

-- Retrieve the 10 longest films (based on length in minutes):
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

-- Use filtering techniques:
-- Retrieve all actors with the first name "SCARLETT"
SELECT * FROM actor
WHERE first_name = 'SCARLETT';

-- BONUS
-- Retrieve all movies that have "ARMAGEDDON" in their title and have a duration longer than 100 minutes
SELECT title, length FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- Determine the number of films that include "Behind the Scenes" content
SELECT COUNT(*) AS films_with_behind_the_scenes FROM film
WHERE special_features LIKE '%Behind the Scenes%';










