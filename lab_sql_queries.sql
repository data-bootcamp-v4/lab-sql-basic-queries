USE sakila;
SHOW TABLES FROM sakila;

SELECT *
FROM actor;

SELECT *
FROM customer;

SELECT *
FROM film;

SELECT title
FROM film;

SELECT name AS Language
FROM language;

SELECT first_name
FROM staff;

SELECT first_name
FROM staff;

SELECT DISTINCT release_year
FROM film;

SELECT COUNT(DISTINCT store_id)
FROM store;

SELECT COUNT(DISTINCT staff_id)
FROM staff;

SELECT 
	COUNT(inventory_id), 
	COUNT(return_date), 
	(COUNT(inventory_id)-COUNT(return_date)) AS available_to_rent
FROM rental;

SELECT COUNT(DISTINCT last_name)
FROM actor;

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10
;

SELECT first_name
FROM actor
WHERE first_name = "SCARLETT"
;

SELECT title, length
FROM film
WHERE title LIKE "%ARMAGEDDON%" AND length > 100
;

SELECT COUNT(special_features)
FROM film
WHERE special_features LIKE "%Behind the Scenes%"
;

