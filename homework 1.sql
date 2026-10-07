USE sakila;

SHOW Tables;

SELECT * FROM actor;

SELECT * FROM film;

SELECT * FROM customer;

SELECT title FROM film;

SELECT name FROM language;

SELECT first_name FROM staff;

SELECT DISTINCT release_year FROM film;

SELECT * FROM store;

SELECT * FROM STAFF;

SELECT COUNT(DISTINCT film_id) FROM inventory;

SELECT COUNT(*) FROM rental;

SELECT DISTINCT last_name FROM actor;

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

