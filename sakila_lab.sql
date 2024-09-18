USE sakila;


-- Display all available tables in the Sakila database.

SHOW tables;

-- Retrieve all the data from the tables actor, film and customer.

SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

-- Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table

SELECT title FROM sakila.film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table

SELECT name AS language FROM sakila.language;

-- 3.3 List of first names of all employees from the staff table

SELECT first_name FROM sakila.staff;

-- Retrieve unique release years.

SELECT DISTINCT release_year FROM sakila.film;

-- Counting records for database insights:
-- 5.2 Determine the number of employees that the company has.

SELECT COUNT(*) FROM sakila.staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.

SELECT COUNT(DISTINCT rental_id) AS rented_films , 
	COUNT(DISTINCT inventory_id) AS inventory_films
FROM sakila.rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.

SELECT COUNT(DISTINCT last_name) FROM sakila.actor;

-- Retrieve the 10 longest films.

SELECT title, length FROM sakila.film
ORDER BY length DESC
LIMIT 10;

-- Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".

SELECT * FROM sakila.actor
WHERE first_name = 'SCARLETT';
