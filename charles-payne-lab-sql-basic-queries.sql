-- LAB | SQL Basic Queries
USE sakila;

-- 1. Display all available tables in the Sakila database.
SHOW tables;

-- 2. Retrieve all the data from the tables actor, film and customer.

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Retrieve the following columns from their respective tables
-- 3a. Titles of all films from the film table
-- 3b. List of languages used in films, with the column aliased as language from the language table

SELECT title FROM film;

SELECT name AS 'language'
FROM language;

SELECT first_name FROM staff;

-- 4. Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

-- 5. Counting records for database insights:
-- 5a. Determine the number of stores that the company has.
SELECT COUNT(*) FROM store;

-- 5b. Determine the number of employees that the company has.
SELECT COUNT(*) FROM staff;

-- 5c. Determine how many films are available for rent and how many have been rented.
SELECT COUNT(title) FROM film;
SELECT COUNT(DISTINCT inventory_id) FROM rental;
SELECT COUNT(*) FROM rental;
SELECT * FROM rental;

-- 5d. Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) FROM actor;

-- 6. Retrieve the 10 longest films.
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

-- 7. Use filtering techniques in order to:
-- 7.1 Retrieve all actos with first name 'SCARLETT'.
SELECT * FROM actor
WHERE first_name LIKE '%SCARLETT%';

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT * FROM film
WHERE special_features LIKE '%Behind the Scenes%';