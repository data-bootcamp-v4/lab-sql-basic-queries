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
name as language
FROM language;

SELECT *
FROM staff;

SELECT
first_name
FROM staff;

SELECT *
FROM film;

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
COUNT(*)
FROM inventory;

SELECT 
COUNT(*)
FROM rental;

SELECT
COUNT(DISTINCT(last_name))
FROM actor;

SELECT
length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT 
first_name
FROM actor
WHERE first_name = "Scarlett";

SELECT 
title,
length
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT 
COUNT(special_features)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

