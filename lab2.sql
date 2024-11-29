USE sakila;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title FROM film;
SELECT * FROM language;
SELECT name AS language FROM language;

SELECT first_name FROM staff;

SELECT DISTINCT release_year from film;

SELECT * FROM store;
SELECT COUNT(store_id) FROM store;

SELECT * FROM staff;
SELECT COUNT(staff_id) FROM staff; 

SELECT * FROM actor;
SELECT COUNT(DISTINCT(last_name)) FROM actor;

SELECT * FROM film;
SELECT title
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT * FROM actor;
SELECT CONCAT(first_name,' ', last_name) AS full_name FROM actor WHERE first_name = 'SCARLETT';