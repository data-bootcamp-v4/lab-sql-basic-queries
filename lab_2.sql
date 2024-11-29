USE sakila;
-- 1
SHOW tables;
-- 2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- 3
SELECT title FROM film;
SELECT name FROM language;
SELECT first_name FROM staff;
-- 4
SELECT DISTINCT release_year FROM film;
-- 5
SELECT COUNT(*) AS number_of_stores -- counts all rows in the table 
FROM store;
--
SELECT SUM(store_id) FROM store;
--
SELECT COUNT(*) AS number_of_employees 
FROM staff;
--
SELECT COUNT(*) AS films_rented 
FROM inventory;
SELECT SUM(inventory_id) FROM rental;
--
SELECT COUNT(DISTINCT last_name) FROM actor;

-- 6
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT COUNT(*) AS behind_the_scenes_count
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

