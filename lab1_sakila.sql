USE sakila;

-- 1. Display all available tables 
SHOW TABLES;

-- 2. Retrieve all data from selected tables
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Retrieve columns from selected tables
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;

-- 4. Retrieve unique release years
SELECT DISTINCT release_year FROM film;

-- 5.1 Number of stores
SELECT COUNT(*) AS number_stores
FROM store;

-- 5.2 Number of employees
SELECT COUNT(*) AS number_employees 
FROM staff;

-- 5.3 Films available for rent and films rented
SELECT * FROM inventory;
SELECT COUNT(*) AS number_copies_available
FROM inventory;

SELECT * FROM rental;
SELECT COUNT(*) AS rented_copies
FROM rental;

-- 5.4 Number of distinct last names of actors
SELECT * FROM actor;
SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

-- 6. Ten longest films
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1 Actors with first name "Scarlett"
SELECT * FROM actor WHERE first_name = "SCARLETT";











