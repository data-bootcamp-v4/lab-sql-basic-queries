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
-- Número de películas disponibles para alquilar
SELECT COUNT(*) AS available_films
FROM inventory
WHERE inventory_id NOT IN (SELECT inventory_id FROM rental WHERE return_date IS NULL);
SELECT COUNT(DISTINCT inventory_id) AS rented_films
FROM rental;
SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;
