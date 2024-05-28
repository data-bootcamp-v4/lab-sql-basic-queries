-- Select the Sakila database
USE sakila;

-- Display all available tables in the Sakila database
SHOW TABLES;

-- Retrieve all data from the actor table
SELECT * FROM actor;
-- Retrieve all data from the film table
SELECT * FROM film;
-- Retrieve all data from the customer table
SELECT * FROM customer;

-- Retrieve the following columns from their respective tables: 
-- 3.1 Titles of all films from the film table
SELECT TITLE from FILM;
-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name AS language FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;

-- 4. Retrieve unique release years.
SELECT DISTINCT YEAR(release_year) as unique_release_year from FILM;

-- 5. Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(*) AS store_count FROM store;
-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(*) as employee_count FROM staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*) AS films_rented FROM rental;
-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM actor;
-- 6. Retrieve the 10 longest films.
SELECT title, description, length FROM film ORDER BY length DESC LIMIT 10;
-- 7. Use filtering techniques in order to:
SELECT * from ACTOR WHere first_name = 'Scarlett'
-- 7.1 Retrieve all actors with the first name "SCARLETT".

