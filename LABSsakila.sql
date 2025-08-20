USE sakila;

SHOW TABLES in sakila;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title FROM film;

SELECT * FROM language;
SELECT name AS language 
FROM language;

SELECT * FROM staff;
SELECT first_name FROM staff;

SELECT * FROM film;
SELECT DISTINCT(release_year) FROM film;

SELECT * FROM store;
SELECT DISTINCT(store_id) FROM store;

SELECT * FROM staff;
SELECT DISTINCT(staff_id) FROM staff;

SELECT * FROM rental;

SELECT * FROM inventory;
SELECT COUNT(DISTINCT film_id) AS film_available
FROM inventory;

SELECT * FROM rental;
SELECT COUNT(DISTINCT inventory_id) AS film_rented
FROM rental;

SELECT * FROM actor;
SELECT DISTINCT(last_name) 
FROM actor;

SELECT * FROM film;
SELECT length FROM film;
SELECT title, length
FROM film 
ORDER BY length DESC
LIMIT 10;

SELECT * FROM actor
WHERE first_name = 'SCARLETT' OR last_name = 'SCARLETT';

SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;
