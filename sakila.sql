SHOW TABLES;

-- Retrieve all data from the actor table
SELECT * FROM actor;

-- Retrieve all data from the film table
SELECT * FROM film;

-- Retrieve all data from the customer table
SELECT * FROM customer;

SELECT title FROM film;

SELECT name AS language FROM language;

SELECT first_name FROM staff;

SELECT DISTINCT release_year FROM film;

SELECT COUNT(*) AS store_count FROM store;

SELECT COUNT(*) AS employee_count FROM staff;

-- Total number of films available for rent
SELECT COUNT(*) AS total_films FROM inventory;

-- Total number of films that have been rented
SELECT COUNT(DISTINCT inventory_id) AS rented_films FROM rental;

SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names FROM actor;

SELECT title, length FROM film
ORDER BY length desc
LIMIT 10;

SELECT * FROM actor
WHERE first_name = 'SCARLETT';










