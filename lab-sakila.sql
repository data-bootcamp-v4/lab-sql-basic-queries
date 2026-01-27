USE sakila;

-- 1 
SHOW TABLES;

SELECT * 
FROM film 
LIMIT 10;

-- 2
SELECT * 
FROM actor;

SELECT *
FROM film;

SELECT * 
FROM customer; 

-- 3
SELECT 
title 
FROM 
film; 

SELECT 
name as language
FROM 
language;

SELECT 
first_name 
FROM staff
LIMIT 10; 

-- 4
SELECT DISTINCT
release_year
FROM film;

-- 5
SELECT 
COUNT(store_id) as store_total
FROM store; 

SELECT 
COUNT(staff_id) as staff_total
FROM staff;

SELECT
COUNT(inventory_id) as inventory_films
FROM inventory;
 
 SELECT
 COUNT(rental_id) as rental_films
 FROM rental;
 
SELECT 
COUNT(DISTINCT last_name) AS distinct_actor
FROM actor;

-- 6
SELECT 
title
FROM film
ORDER BY length
LIMIT 10;

-- 7
SELECT *
FROM actor
WHERE first_name = 'SCARLETT'; 

-- Bonus
SELECT 
title, 
length
FROM film
WHERE title LIKE '%ARMAGEDDON%' 
AND length > 100;

SELECT 
COUNT(*) AS films_behind
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
