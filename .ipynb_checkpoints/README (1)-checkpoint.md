-- # 1
USE sakila;
-- # 2
SELECT * FROM actor;
SELECT* FROM film;
SELECT * FROM customer;
-- 3
SELECT title From film;
SELECT name AS language from language;
SELECT first_name FROM staff;
-- # 4
SELECT DISTINCT release_year
FROM film;
-- # 5
SELECT COUNT(*) AS store_count
FROM store;
SELECT COUNT(*) AS employee_count
FROM staff;
SELECT COUNT(*) AS employee_count
FROM staff;
SELECT COUNT(*) AS employee_count
FROM staff;
SELECT COUNT(*) AS employee_count
FROM staff;
SELECT COUNT(DISTINCT film_id) AS available_films
FROM inventory;
SELECT COUNT(DISTINCT inventory.film_id) AS rented_films
FROM rental
JOIN inventory ON rental.inventory_id = inventory.inventory_id
SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;
-- # 6
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;
-- # 7
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';









