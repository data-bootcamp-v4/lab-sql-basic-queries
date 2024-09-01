USE sakila;
-- Display all available tables in the Sakila database.

SHOW TABLES;

-- Retrieve all the data from the tables actor, film and customer.

SELECT * FROM actor
UNION ALL
SELECT * FROM film
UNION ALL
SELECT * FROM customer;

-- Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
SELECT title FROM film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name AS language FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT DISTINCT first_name FROM staff;

-- Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

-- Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(*) AS number_of_stores FROM store;

-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(*) AS number_of_employees FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*) AS films_available_for_rent FROM film;
SELECT COUNT(*) AS films_rented FROM rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM actor;

-- Retrieve the 10 longest films.
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;
