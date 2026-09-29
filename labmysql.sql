USE sakila;
SHOW TABLES;

SELECT 
title
FROM film;

SELECT 
name
FROM language;

SELECT 
first_name
FROM staff;

SELECT 
DISTINCT release_year
FROM film;

SELECT 
COUNT(store_id)
FROM store;

SELECT
COUNT(staff_id)
FROM staff;

SELECT
COUNT(inventory_id)
FROM rental;

SELECT
COUNT(DISTINCT last_name)
FROM actor;

SELECT 
length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT 
first_name,
last_name
FROM actor
WHERE first_name = 'Scarlett';