-- 1. display tables:
USE sakila;
SHOW TABLES;
-- 2. Retrieve all the data from the tables actor, film and customer
-- from actor:
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. retrieve columns:
-- 3.1. film name 
SELECT title 
FROM film;

-- 3.2. language list
SELECT name AS language 
FROM language;

-- 3.3. name from staff
SELECT first_name 
FROM staff;

-- 4. Retrieve unique release years
SELECT DISTINCT release_year 
FROM film;

-- 5. Counting records for database insights
-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(*) AS total_stores FROM store;
-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(*) AS total_employees FROM staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*) AS films_available FROM inventory;
SELECT COUNT(*) AS total_rented FROM rental;
-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names FROM actor;

-- 6. Retrieve the 10 longest films.
SELECT title, length 
FROM film 
ORDER BY length DESC 
LIMIT 10;

-- 7 Use filtering techniques

-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor 
WHERE first_name = 'SCARLETT';


