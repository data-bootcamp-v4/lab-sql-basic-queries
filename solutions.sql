#1
SHOW TABLES;
USE sakila;

#2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

#3
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;

#4
SELECT DISTINCT release_year FROM film;

#5
SELECT COUNT(*) AS total_stores FROM store;
SELECT COUNT(*) AS total_employees FROM staff;
SELECT COUNT(DISTINCT film_id) AS available_films FROM inventory;
SELECT COUNT(DISTINCT inventory_id) AS rented_films FROM rental;
SELECT COUNT(DISTINCT last_name) AS unique_last_names FROM actor;

#6
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

#7
SELECT * FROM actor
WHERE first_name = 'SCARLETT';

SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
