-- Make sure you're using the Sakila database
USE sakila;
-- 1) Display all available tables in Sakila
SHOW TABLES;
-- 2) Retrieve all data from the requested tables
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- 3) Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
SELECT title FROM film;
-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT language_id FROM film;
-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;
-- Retrieve unique release years.
SELECT DISTINCT release_year FROM film;
-- Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(*) AS num_stores FROM store;
-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(*) AS num_employees FROM staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*) AS total_films_available FROM inventory;
SELECT COUNT(DISTINCT film_id) AS total_films_rented FROM rental;
-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names FROM actor;
-- Retrieve the 10 longest films.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;
-- Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT';