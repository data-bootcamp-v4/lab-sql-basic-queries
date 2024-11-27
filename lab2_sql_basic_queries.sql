USE sakila;
-- Display all available tables
SHOW TABLES;
-- Retrieve all data available tables with *
SELECT * FROM actor;

SELECT * FROM film;
-- 3.1
SELECT title FROM film;
-- 3.2
SELECT name AS language FROM language;
-- 3.3
SELECT first_name FROM staff;

-- 4. 0 retrieve unique release years
SELECT DISTINCT release_year FROM film;
-- 5. 1 determine the number of stores that the company has.
SELECT COUNT(*) AS number_of_stores FROM store;
-- 5.2 number of employees
SELECT COUNT(*) AS number_of_employees FROM staff;
-- 5.3 Films available for rent and rented films
SELECT COUNT(*) AS films_available_for_rent
FROM inventory;
-- 
SELECT COUNT(*) AS films_rented
FROM rental;

-- 5.4 to determine distinct last names of the actors
SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

-- 6.0 10 longest films
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- to filter all actors with the first name "SCARLETT".
SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT';

-- 7.1 bonus
SELECT film_id, title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;
  
-- 7.2 number of films that include Behind the Scenes content
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE FIND_IN_SET('Behind the Scenes', special_features) > 0;












SELECT * FROM customer;
