-- 1
USE sakila;
SHOW TABLES;



-- 2
SELECT*
FROM
actor
LIMIT 5;

SELECT*
FROM
film
LIMIT 5;

SELECT*
FROM
customer
LIMIT 5;



-- 3.1 
SELECT
title
FROM film;



-- 3.2
SELECT 
name as language
FROM language;



-- 3.3
SELECT
first_name
from staff;


-- 4
SELECT
release_year
FROM film;


-- 5.1
SELECT
COUNT(distinct store_id) AS n_stores 
FROM store;



-- 5.2
SELECT
COUNT(distinct staff_id) as n_employees
FROM staff;

-- 5.3

SELECT
COUNT(*) AS films_avaible_for_rent
FROM inventory;

SELECT
COUNT(*) AS rentals_done 
FROM rental;

-- 5.4
SELECT 
COUNT(DISTINCT last_name) as disctinct_actor_last_names 
FROM actor;


-- 6
SELECT
title,
length
FROM film
ORDER BY length DESC
LIMIT 10;


-- 7.1
SELECT
first_name
FROM actor
WHERE first_name REGEXP 'scarlett';

-- 7.2
SELECT
title,
length
FROM film
WHERE title REGEXP 'ARMAGEDDON' AND  length > 100;

-- 7.3 
SELECT
COUNT(*) AS films_with_bts 
FROM film
WHERE special_features REGEXP 'Behind the Scenes';


-- FINISH