-- 1. Display all available tables in the Sakila database:
SHOW TABLES;

-- 2. Retrieve all the data from the tables actor, film, and customer:
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Retrieve specific columns:

-- 3.1 Titles of all films:
SELECT title FROM film;

-- 3.2 List of languages used in films:
SELECT name AS language FROM language;

-- 3.3 List of first names of all employees:
SELECT first_name FROM staff;

-- 4. Retrieve unique release years:
SELECT DISTINCT release_year FROM film;

-- 5. Counting records for database insights:

-- 5.1 Number of stores:
SELECT COUNT(*) AS number_of_stores FROM store;

-- 5.2 Number of employees:
SELECT COUNT(*) AS number_of_employees FROM staff;

-- 5.3 Number of films available for rent and rented:
SELECT COUNT(*) AS films_available FROM inventory;
SELECT COUNT(DISTINCT inventory_id) AS films_rented FROM rental;

-- 5.4 Number of distinct last names of actors:
SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM actor;

-- 6. Retrieve the 10 longest films:
SELECT title, length FROM film ORDER BY length DESC LIMIT 10;

-- 7.  Use filtering techniques:

-- 7.1 Retrieve all actors with the first name "SCARLETT":
SELECT * FROM actor WHERE first_name = 'SCARLETT';

-- BONUS:

-- 7.2 Retrieve all movies with "ARMAGEDDON" in their title and a duration longer than 100 minutes:
-- Hint: The percent sign % represents zero, one, or multiple characters. 
--       The underscore sign _ represents one, single character.
SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3 Determine the number of films that include "Behind the Scenes" content:
SELECT COUNT(*) AS films_with_behind_the_scenes FROM film WHERE special_features LIKE '%Behind the Scenes%';


