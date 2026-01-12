USE sakila;
SHOW FULL tables;
SELECT COUNT(*) FROM film;
SELECT COUNT(*) FROM film_text;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title 
FROM film;

SELECT name AS language
FROM language;

SELECT first_name
FROM staff;

SELECT DISTINCT release_year -- #4 --
FROM film;

-- Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.

SELECT COUNT(store_id) AS number_of_stores
FROM store;

-- 5.2 Determine the number of employees that the company has.

SELECT COUNT(staff_id) AS number_of_employees
FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.

SELECT COUNT(*) AS films_available_for_rent
FROM inventory;

SELECT COUNT(*) AS films_rented
FROM rental;


-- 5.4 Determine the number of distinct last names of the actors in the database.

SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

-- Retrieve the 10 longest films.

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'SCARLETT';
