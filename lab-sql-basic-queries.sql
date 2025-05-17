SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title FROM film;

SELECT name AS language FROM language;

SELECT first_name, last_name FROM staff;

SELECT DISTINCT release_year FROM film;

SELECT COUNT(*) AS store_count FROM store;

SELECT COUNT(*) AS employee_count FROM staff;

-- Películas disponibles (en inventario)
SELECT COUNT(*) AS total_inventory FROM inventory;

-- Películas alquiladas
SELECT COUNT(DISTINCT inventory_id) AS rented_films FROM rental;

SELECT COUNT(DISTINCT last_name) AS unique_last_names FROM actor;

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT * 
FROM actor 
WHERE first_name = 'SCARLETT';

SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT COUNT(*) AS films_with_bonus
FROM film
WHERE special_features LIKE '%Behind the Scenes%';