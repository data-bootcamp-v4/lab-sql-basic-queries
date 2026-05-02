USE sakila;
-- 1) Show all tables from selected database
SHOW TABLES;

-- 2) Selecting * from tables
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.1) All the films from the film table
-- 3.2) List of languages used in films AS 'language' from the language table
-- 3.3) List of first names of all employees from staff table

SELECT title FROM film;
SELECT name AS 'language' FROM language;
SELECT first_name FROM staff;

-- 4) Retrieve unique release years
SELECT DISTINCT release_year FROM film;

-- 5) Four-part challenge
-- 5.1) Determine # of stores
-- 5.2) # of employees
-- 5.3) How many films are available for rent and how many have been rented
-- 5.4) # of distinct LAST NAMES of actors in the database

SELECT COUNT(*) store_id FROM store;
SELECT COUNT(*) staff_id FROM staff;
SELECT COUNT(*) FROM inventory;
SELECT COUNT(*) FROM rental;
SELECT COUNT(DISTINCT last_name) FROM actor;

-- 6) Retrieve 10 longest films
SELECT length FROM film
ORDER BY LENGTH(length) DESC
LIMIT 10;

-- 7.1) Are there any Scarlett's in the house?
SELECT first_name, last_name FROM actor WHERE first_name = 'SCARLETT';

-- 7.2) Movies with ARMAEGEDDON in their title, lenght over 100 minutes
SELECT title FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3) Number of films with behind the scenes content
SELECT COUNT(DISTINCT title) FROM film WHERE special_features LIKE '%behind%';