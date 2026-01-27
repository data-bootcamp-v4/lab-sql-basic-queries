USE sakila;
SHOW TABLES;

SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;

SELECT
title
FROM film;

SELECT *
FROM language;

SELECT
language_id
FROM film;

SELECT DISTINCT
language_id
FROM film;

SELECT *
FROM staff;

SELECT
first_name,
last_name
FROM staff;

SELECT DISTINCT
release_year
FROM film;

SELECT *
FROM store;

SELECT
store_id,
COUNT(store_id) AS total_stores
FROM store
GROUP BY
store_id;

SELECT
COUNT(staff_id) AS total_staff
FROM staff;


SELECT *
FROM rental;

SELECT *
FROM inventory;

SELECT
COUNT(inventory_id) AS total_available_movies
FROM inventory;

SELECT
COUNT(DISTINCT inventory_id) AS total_rented
FROM rental;


SELECT
COUNT(DISTINCT last_name) AS total_last_names
FROM actor;

SELECT
title,
length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT *
FROM actor; 

SELECT
actor_id,
first_name
FROM actor
WHERE first_name LIKE '%SCARLETT%';


SELECT
title,
length
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT
title,
special_features
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

