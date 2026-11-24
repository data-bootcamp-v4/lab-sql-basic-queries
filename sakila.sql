-- 1.
USE sakila;
SHOW TABLES;

-- 2.
SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;

-- 3.

-- 3.1
SELECT title
FROM film;

-- 3.2
SELECT DISTINCT `name` AS language
FROM `language`;

-- 3.3
SELECT first_name
FROM staff;

-- 4.
SELECT DISTINCT release_year
FROM film;

-- 5.
-- 5.1
SELECT COUNT(store_id)
FROM store;

-- 5.2
SELECT COUNT(staff_id)
FROM staff;

-- 5.3
SELECT COUNT(DISTINCT film_id)
FROM inventory;

SELECT COUNT(DISTINCT inventory_id)
FROM rental;

-- 5.4
SELECT COUNT(DISTINCT last_name)
FROM actor;

-- 6.
SELECT title, length
FROM film
ORDER BY length desc
LIMIT 10;

-- 7.
SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name LIKE 'SCARLETT';


SELECT *
FROM inventory;