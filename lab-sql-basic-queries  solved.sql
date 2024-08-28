USE sakila;
-- 1. Display all available tables in the Sakila database
SHOW TABLES;
-- 2. Retrieve all data from the tables actor, film, and customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.1 Titles of all films from the film table
SELECT title FROM film;

-- 3.2 List of languages used in films, with the column aliased as 'language' from the language table
SELECT name AS language FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;

-- 4. Retrieve unique release years
SELECT DISTINCT release_year FROM film;

-- 5.1 Determine the number of stores that the company has
SELECT COUNT(*) AS number_of_stores FROM store;

-- 5.2 Determine the number of employees that the company has
SELECT COUNT(*) AS number_of_employees FROM staff;

SELECT 
    (SELECT COUNT(*) FROM inventory) AS films_available,
    (SELECT COUNT(*) FROM rental) AS films_rented;
    
-- 5.4 Determine the number of distinct last names of the actors in the database
SELECT COUNT(DISTINCT last_name) AS unique_last_names FROM actor;

-- 6. Retrieve the 10 longest films
SELECT title, length FROM film ORDER BY length DESC LIMIT 10;


-- 7.1 Retrieve all actors with the first name "SCARLETT"
SELECT * FROM actor WHERE first_name = 'SCARLETT';