USE sakila;
SHOW TABLES;
-- 1
SHOW TABLES;

-- 2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.1
SELECT title FROM film;

-- 3.2
SELECT name AS language FROM language;

-- 3.3
SELECT first_name FROM staff;

-- 4
SELECT DISTINCT release_year FROM film;

-- 5.1
SELECT COUNT(*) AS number_of_stores FROM store;

-- 5.2
SELECT COUNT(*) AS number_of_employees FROM staff;

-- 5.3
SELECT COUNT(*) AS films_available_for_rent FROM inventory;
SELECT COUNT(*) AS films_rented FROM rental;

-- 5.4
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names FROM actor;

-- 6
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- BONUS 
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

-- BONUS 
SELECT COUNT(*)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
