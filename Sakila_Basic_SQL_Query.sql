
USE sakila;
-- Display all available tables in the Sakila database
SHOW TABLES;

-- Retrieve all the data from the tables actor, film, and customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- Retrieve specific columns from tables
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;

-- Retrieve unique release years
SELECT DISTINCT release_year FROM film;

-- Counting records for database insights
SELECT COUNT(*) AS total_stores FROM store;
SELECT COUNT(*) AS total_employees FROM staff;
SELECT COUNT(*) AS available_films FROM inventory;
SELECT COUNT(DISTINCT inventory_id) AS rented_films FROM rental;
SELECT COUNT(DISTINCT last_name) AS unique_last_names FROM actor;

-- Retrieve the 10 longest films (sorted by length in descending order)
SELECT title, length FROM film ORDER BY length DESC LIMIT 10;

-- Filtering techniques
SELECT * FROM actor WHERE first_name = 'SCARLETT';
SELECT title, length FROM film 
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
SELECT COUNT(*) AS films_with_bts FROM film WHERE special_features LIKE '%Behind the Scenes%';


