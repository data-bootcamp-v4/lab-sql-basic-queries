-- Use the sakila database to do the following tasks:
USE sakila;
-- Display all available tables in the Sakila database.
SHOW TABLES;
-- Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film; 
SELECT * FROM customer;

-- Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table
SELECT film_id, language_id FROM film;

 -- 3.2 List of languages used in films, with the column aliased as language from the language table
 SELECT name AS language FROM language; 
 
-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;

-- 4. Retrieve unique release years.
SELECT DISTINCT release_year FROM film
ORDER BY release_year ASC;

-- Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(DISTINCT store_id) FROM store;
-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(staff_id) FROM staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.

-- Films that have been rented (Total Rental History)
SELECT COUNT(*) FROM rental;
-- Films currently rented
SELECT COUNT(*) FROM rental
WHERE return_date is NULL;
-- Filmd available for rent
SELECT COUNT(*) FROM inventory;

-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) FROM actor;

-- 6. Retrieve the 10 longest films.
SELECT title FROM film ORDER BY length DESC LIMIT 10;
-- 7. Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT actor_id, first_name FROM actor 
WHERE first_name = "SCARLETT";

-- BONUS:
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) FROM film 
WHERE special_features LIKE '%BEHIND THE SCENES%';
