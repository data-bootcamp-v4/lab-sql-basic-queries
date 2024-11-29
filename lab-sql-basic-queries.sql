-- Display all available tables in the Sakila database
USE sakila;
SHOW TABLES

-- Retrieve all the data from the tables actor, film and customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- Retrieve the following columns from their respective tables:
-- Titles of all films from the film table
SELECT title FROM film;

-- List of languages used in films, with the column aliased as language from the language table
SELECT * FROM language;
SELECT name as language FROM language

-- List of first names of all employees from the staff table
SELECT * FROM staff
SELECT first_name FROM staff

-- Retrieve unique release years
SELECT DISTINCT release_year FROM film; 

-- Counting records for database insights:
-- Determine the number of stores that the company has
SELECT COUNT(*) FROM store;

-- Determine the number of employees that the company has
SELECT COUNT(*) FROM staff;

-- Determine how many films are available for rent and how many have been rented
SELECT COUNT(DISTINCT film_id) FROM film;
SELECT COUNT(*) FROM rental
WHERE return_date IS NULL;

-- Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) FROM actor;

-- Retrieve the 10 longest films
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

-- Use filtering techniques in order to:
-- Retrieve all actors with the first name "SCARLETT"
SELECT * FROM actor
WHERE first_name = 'SCARLETT';

-- Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes
SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) FROM film
WHERE special_features LIKE '%Behind the Scenes%';