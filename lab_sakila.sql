USE sakila;
SHOW TABLES FROM sakila;
-- Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- 3.1 Titles of all films from the film table
-- 3.2 List of languages used in films, with the column aliased as language from the language table
-- 3.3 List of first names of all employees from the staff table
SELECT title FROM film;
SELECT language_id FROM film;
SELECT first_name FROM staff;

-- Retrieve unique release years.
SELECT release_year FROM film;

-- Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
SELECT store_id FROM store;

--  5.2 Determine the number of employees that the company has.
SELECT count(staff_id) FROM staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT count(rental_id) FROM rental;
-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) 
FROM actor;

 -- Retrieve the 10 longest films.
SELECT title 
FROM film 
WHERE length >= '120'
LIMIT 10;

-- Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT actor_id 
FROM actor
WHERE first_name = 'SCARLETT';