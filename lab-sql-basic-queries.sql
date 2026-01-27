#Punto 1 del Lab
USE SAKILA;

SHOW TABLES;

#Punto 2 del Lab
SELECT * 
FROM actor;

SELECT * 
FROM film;

SELECT * 
FROM customer;

#Punto 3 del Lab

SELECT title
FROM film;

SELECT name AS language
FROM language;

SELECT first_name
FROM staff;

#Punto 4 del Lab
SELECT DISTINCT release_year
FROM film;

#Punto 5 del Lab
SELECT 
COUNT(*) AS number_of_stores
FROM store;

SELECT 
COUNT(*) AS number_of_employees
FROM staff;

SELECT 
COUNT(DISTINCT inventory_id) AS films_available_for_rent
FROM inventory;

SELECT 
COUNT(DISTINCT inventory_id) AS films_rented
FROM rental;

SELECT 
COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

#Punto 6 del Lab
SELECT 
title, length
FROM film
ORDER BY length DESC
LIMIT 10;

#Punto 7 del Lab
ELECT *
FROM actor
WHERE first_name = 'SCARLETT';

SELECT 
title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;
  
SELECT 
COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';