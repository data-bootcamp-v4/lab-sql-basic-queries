USE sakila;

-- task 1
SHOW TABLES;

-- task 2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- task 3
-- 3.1
SELECT title FROM film;
-- 3.2
SELECT name AS language FROM language;
-- 3.3
SELECT first_name FROM staff;

-- task 4
SELECT DISTINCT release_year FROM film;

-- task 5
-- 5.1 number of stores
SELECT COUNT(store_id) FROM store;
-- 5.2 number of employees
SELECT COUNT(staff_id) FROM staff;
-- 5.3 copies available for rent / total rentals
SELECT COUNT(film_id) FROM inventory;
SELECT COUNT(rental_id) FROM rental;
-- 5.4 distinct actor last names
SELECT COUNT(DISTINCT last_name) FROM actor;

-- task 6
SELECT title FROM film ORDER BY length DESC LIMIT 10;

-- task 7
-- 7.1
SELECT * FROM actor WHERE first_name = 'SCARLETT';
-- 7.2
SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
-- 7.3
SELECT COUNT(film_id) FROM film WHERE special_features LIKE '%Behind the Scenes%';