USE sakila;
SHOW TABLES;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;
SELECT DISTINCT release_year FROM film;
SELECT COUNT(DISTINCT store_id) FROM store;
SELECT COUNT(DISTINCT staff_id) FROM staff;
SELECT title FROM film
ORDER BY length DESC
LIMIT 10;
SELECT * FROM actor WHERE first_name = 'SCARLETT';