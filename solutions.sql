-- solutions.sql
-- SQL Basic Queries Lab (Sakila)
-- Make sure Sakila is installed before running these queries.

USE sakila;

-- 1) Display all available tables in the Sakila database.
SHOW TABLES;

-- 2) Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3) Retrieve specific columns
-- 3.1 Titles of all films from the film table
SELECT title
FROM film;

-- 3.2 List of languages used in films, aliased as language, from the language table
SELECT name AS language
FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name
FROM staff;

-- 4) Retrieve unique release years.
SELECT DISTINCT release_year
FROM film;

-- 5) Counting records for database insights
-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(*) AS number_of_stores
FROM store;

-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(*) AS number_of_employees
FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
-- Available for rent: inventory items (each copy of a film)
SELECT COUNT(*) AS available_for_rent_inventory_items
FROM inventory;

-- Rented: total rental records
SELECT COUNT(*) AS total_rentals
FROM rental;

-- (Optional extra insight) distinct films in inventory vs distinct films ever rented
SELECT
  COUNT(DISTINCT inventory.film_id) AS distinct_films_in_inventory,
  (SELECT COUNT(DISTINCT inventory2.film_id)
   FROM rental r
   JOIN inventory inventory2 ON r.inventory_id = inventory2.inventory_id) AS distinct_films_ever_rented;

-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;

-- 6) Retrieve the 10 longest films.
SELECT title, length
FROM film
ORDER BY length DESC, title ASC
LIMIT 10;

-- 7) Filtering techniques
-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- BONUS
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100
ORDER BY length DESC;

-- 7.3 Determine the number of films that include Behind the Scenes content.
-- In Sakila, special_features is a SET that can include 'Behind the Scenes'
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE FIND_IN_SET('Behind the Scenes', special_features) > 0;
