USE sakila;

-- Retrieve all the data from the tables actor, film and customer.

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- Retrieve the following columns from their respective tables: : 
-- 3.1 Titles of all films from the film table

SELECT title
FROM film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table

SELECT name
FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name
FROM staff;


-- Retrieve unique release years.

SELECT DISTINCT release_year
FROM film;

-- Counting records for database insights:
SELECT * 
FROM store;

-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(*) 
FROM store;

-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(*)
FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*)
FROM rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) 
FROM actor;

-- Retrieve the 10 longest films.

SELECT title, length 
FROM film
ORDER BY length DESC
LIMIT 10;

-- Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".

SELECT * 
FROM actor
WHERE first_name= "SCARLETT";





