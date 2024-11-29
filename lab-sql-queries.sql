USE sakila;
-- 1
SHOW FULL TABLES;
-- 2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.1
SELECT title FROM film;
-- 3.2
SELECT name FROM language;
-- 3.3
SELECT first_name FROM staff;

-- 4
SELECT DISTINCT release_year FROM film;

-- 5.1
SELECT COUNT(DISTINCT store_id) FROM store;
-- 5.2
SELECT COUNT(DISTINCT staff_id) FROM staff;
-- 5.3  
SELECT COUNT(*) FROM film;
SELECT COUNT(*) FROM rental;
-- 5.4 
SELECT COUNT(DISTINCT last_name) FROM actor;

-- 6
SELECT * FROM film;
SELECT title, length FROM film ORDER BY length DESC LIMIT 10;
 
-- 7.1
SELECT first_name, last_name FROM actor WHERE first_name="SCARLETT";

-- 7.2
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3
SELECT COUNT(*) AS number_of_films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';





