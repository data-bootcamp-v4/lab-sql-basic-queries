USE sakila;

SHOW TABLES; 

-- 2.Retrieve all the data from the tables actor, film and customer.
SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;

-- 3.Retrieve the following columns from their respective tables:
SELECT title FROM film;

SELECT name FROM language;

SELECT first_name FROM staff;


-- 4.Retrieve unique release years.
SELECT DISTINCT release_year FROM film;


-- 5.Counting records for database insights:
-- 5.1
SELECT 
COUNT(DISTINCT store_id) as num_stores
FROM store;
-- 5.2
SELECT 
COUNT(DISTINCT staff_id) as num_employees
FROM staff;

-- 5.3
SELECT COUNT(DISTINCT film_id) AS available_for_rent
FROM inventory;

SELECT COUNT(DISTINCT inventory_id) AS rented
FROM rental;

-- 5.4
SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

-- 6.Retrieve the 10 longest films.
SELECT *
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.Use filtering techniques in order to:
-- 7.1
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. 
SELECT 
length, title
FROM film
WHERE length > 100 AND title LIKE '%ARMAGEDDON%';