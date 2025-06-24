USE sakila;

SHOW tables;

SELECT * 
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;

SELECT 
title
FROM film;

SELECT 
name AS language
FROM language;

SELECT 
first_name
FROM staff;

SELECT 
DISTINCT release_year
FROM film;

SELECT 
COUNT(DISTINCT store_id)
FROM store;

SELECT
COUNT(DISTINCT staff_id)
FROM staff;

SELECT
COUNT(DISTINCT inventory_id)
FROM inventory;

SELECT
COUNT(DISTINCT rental_id)
FROM rental;

SELECT
COUNT(DISTINCT last_name)
FROM actor;

SELECT
title
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT 
first_name,
last_name
FROM actor 
WHERE first_name = 'SCARLETT';

SELECT
title
FROM film 
WHERE (length > 100) AND (title LIKE '%ARMAGEDDON%');

SELECT
COUNT(DISTINCT film_id)
FROM film
WHERE special_features = 'Behind the Scenes';