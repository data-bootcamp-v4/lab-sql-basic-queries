-- Display all available tables in the Sakila database
SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title FROM film;

SELECT name AS language FROM language;

SELECT first_name FROM staff;

-- Retrieve unique release years
SELECT DISTINCT release_year FROM film;

SELECT COUNT(*) AS store_count FROM store;
SELECT COUNT(*) AS employee_count FROM staff;
SELECT COUNT(*) AS available_films FROM inventory;
SELECT COUNT(*) AS rented_films FROM rental;

SELECT COUNT(DISTINCT last_name) AS unique_actor_last_names FROM actor;

-- Retrieve the 10 longest films
SELECT title, length FROM film ORDER BY length DESC LIMIT 10;

-- Filtering techniques
SELECT * FROM actor WHERE first_name = 'SCARLETT';

SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT COUNT(*) AS behind_the_scenes_films FROM film WHERE special_features LIKE '%Behind the Scenes%';
