USE sakila;

-- 1.
SHOW TABLES;

-- 2.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;

-- 4.
SELECT DISTINCT release_year FROM film;

-- 5.
SELECT COUNT(*) FROM store;
SELECT COUNT(*) FROM staff;
SELECT COUNT(*) FROM rental WHERE return_date IS NOT NULL;
SELECT COUNT(*) FROM rental WHERE return_date IS NULL;
SELECT DISTINCT last_name FROM actor;

-- 6.
SELECT * FROM film ORDER BY length DESC LIMIT 10;

-- 7.
SELECT * FROM actor WHERE first_name = "SCARLETT";

-- 8.
SELECT * FROM film WHERE title LIKE "%ARMAGEDDON%" AND length > 100;
SELECT * FROM film WHERE special_features LIKE "%Behind the Scenes%";