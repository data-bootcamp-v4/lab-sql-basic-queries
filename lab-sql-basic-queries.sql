Use sakila;

-- 1. Display all available tables in the Sakila database.

SHOW TABLES From sakila;

-- Retrieve all the data from the tables actor, film and customer.

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table
SELECT title FROM film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table

SELECT name as language FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;

-- 4.Retrieve unique release years.

SELECT DISTINCT RELEASE_YEAR FROM film;


-- Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.
SELECT count(store_id) as number_of_stores FROM STORE;
-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(staff_id) number_of_employees FROM STAFF;

-- 5.3 Determine how many films are available for rent and how many have been rented.

SELECT COUNT(*) AS total_films_available
FROM inventory;

SELECT COUNT(DISTINCT inventory_id) AS total_films_rented
FROM rental;


-- 5.4 Determine the number of distinct last names of the actors in the database.

SELECT count(DISTINCT last_name) from actor;

-- Retrieve the 10 longest films.

SELECT title, length FROM film  ORDER BY length DESC 
LIMIT 10;

-- Use filtering techniques in order to:

SELECT first_name from actor WHERE first_name = 'SCARLETT';