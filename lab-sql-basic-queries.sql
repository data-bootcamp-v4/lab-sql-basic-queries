USE sakila;

SHOW FULL TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

- SELECT title FROM film;

SELECT name AS language FROM language;

SELECT first_name FROM staff;

SELECT DISTINCT release_year FROM film;

SELECT COUNT(*) AS store_count FROM store;

SELECT COUNT(*) AS employee_count FROM staff;

SELECT COUNT(DISTINCT film_id) AS available_films FROM inventory;

SELECT COUNT(DISTINCT inventory.film_id) AS rented_films
FROM rental
JOIN inventory ON rental.inventory_id = inventory.inventory_id;

SELECT COUNT(DISTINCT last_name) AS unique_last_names FROM actor;

SELECT *
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;

SELECT COUNT(*) AS behind_the_scenes_count
FROM film
WHERE special_features LIKE '%Behind the Scenes%';