USE sakila;
SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM customer;
SELECT * FROM film;

SELECT title FROM film;
SELECT name AS language FROM language;

SELECT first_name FROM staff;
SELECT DISTINCT release_year FROM film;

SELECT COUNT(*) FROM store;

SELECT COUNT(*) FROM inventory;

SELECT COUNT(DISTINCT inventory_id) FROM rental;

SELECT COUNT(DISTINCT last_name) FROM actor;

SELECT title, length 
FROM film 
ORDER BY length DESC 
LIMIT 10;

SELECT * FROM actor 
WHERE first_name = 'SCARLETT';

SELECT title, length 
FROM film 
WHERE title LIKE '%ARMAGEDDON%' 
AND length > 100;

SELECT COUNT(*) 
FROM film 
WHERE special_features LIKE '%Behind the Scenes%';