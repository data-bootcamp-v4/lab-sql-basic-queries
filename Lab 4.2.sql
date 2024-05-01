USE sakila;

SHOW TABLES FROM sakila;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT film.title FROM film;
SELECT language.name FROM language;
SELECT staff.first_name FROM staff;

SELECT DISTINCT film.release_year FROM film;

SELECT COUNT(*) FROM store;
SELECT COUNT(*) FROM staff;
SELECT COUNT(*) FROM rental;
SELECT COUNT(*) FROM film;
SELECT DISTINCT COUNT(last_name) FROM actor;
SELECT * FROM film
ORDER BY length DESC
LIMIT 10;

SELECT * FROM actor
WHERE first_name = "Scarlett";




