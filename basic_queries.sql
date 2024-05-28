USE sakila;
-- 1.Display all available tables in the Sakila database.
SHOW TABLES;

-- 2. Retrieve all the data from the tables actor, film and customer.

SELECT * FROM actor; 

SELECT * FROM film;

SELECT * FROM customer;

-- 3.1 Titles of all films from the film table

SELECT title from film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name AS language FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;

-- 4. Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

-- 5.1 Determine the number of stores that the company has.
SELECT SUM(store_id) FROM store;

-- 5.2 Determine the number of employees that the company has.
SELECT SUM(staff_id) FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT * FROM rental;

SELECT COUNT(*) AS total_films_available_for_rent
FROM inventory;

SELECT COUNT(*) AS total_films_rented_out
FROM rental
WHERE return_date IS NULL;

-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS DISTINCT_LAST_NAMES FROM actor;

-- 6. Retrieve the 10 longest films.
SELECT * FROM film;

SELECT*, length AS longest_films FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT*, first_name FROM actor
WHERE first_name = 'SCARLETT';





