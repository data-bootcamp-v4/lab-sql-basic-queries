USE sakila;

SHOW TABLES;

SELECT * FROM actor; 
SELECT * FROM film; 
SELECT * FROM customer;

SELECT title FROM film;

SELECT name AS language 
FROM language;

SELECT first_name 
FROM staff;

SELECT DISTINCT release_year 
FROM film;

SELECT COUNT(*) AS number_of_stores 
FROM store;

SELECT COUNT(*) AS number_of_employees 
FROM staff;

SELECT COUNT(*) AS available_for_rent 
FROM inventory 
WHERE inventory_id NOT IN (SELECT inventory_id FROM rental);

SELECT COUNT(*) AS rented 
FROM rental;

SELECT COUNT(DISTINCT last_name) AS distinct_last_names 
FROM actor;

SELECT title, length 
FROM film 
ORDER BY length DESC 
LIMIT 10;

SELECT * 
FROM actor 
WHERE first_name = 'SCARLETT';

SELECT * 
FROM film 
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT COUNT(*) AS behind_the_scenes_count 
FROM film 
WHERE special_features LIKE '%Behind the Scenes%';

