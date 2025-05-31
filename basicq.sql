USE sakila;
-- TASK 1
SHOW Tables;

-- TASK 2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- TASK 3
SELECT title from film;

SELECT name AS language
FROM language;

SELECT first_name FROM staff;

-- TASK 4
SELECT DISTINCT release_year FROM film;

-- TASK 5

SELECT COUNT(*) FROM store;
SELECT COUNT(*) FROM staff;

SELECT COUNT(DISTINCT film_id) AS films_available_for_rent
FROM inventory;

select * from rental;

SELECT COUNT(DISTINCT inventory_id) AS total_inventory
FROM inventory;

SELECT COUNT(*) AS currently_rented
FROM rental
WHERE return_date IS NULL;

SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

-- TASK 6
SELECT title,
length
FROM film
ORDER BY length DESC
LIMIT 10;

-- TASK 7

SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%' and 
length > 100;

