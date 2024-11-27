USE sakila;

-- 1

SHOW TABLES;

-- 2

SELECT*
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;

-- 
-- 3.1 
SELECT title
FROM film;

-- 3.2 
SELECT name as language
FROM language;

-- 3.3
SELECT first_name
FROM staff;

-- 4
SELECT DISTINCT release_year
FROM film;

-- 5
-- 5.1
SELECT COUNT(store_id)
FROM store;

-- 5.2

SELECT COUNT(staff_id)
FROM staff;

-- 5.3   

SELECT COUNT(DISTINCT inventory_id)
FROM inventory;

SELECT COUNT( DISTINCT inventory_id)
FROM rental;

-- 5.4
SELECT  COUNT(DISTINCT last_name)
FROM actor;

-- 6

SELECT *
FROM film
ORDER BY length DESC
limit 10;

-- 7.1

SELECT *
FROM actor
WHERE first_name LIKE '%Scarlett%';

-- 7.2

SELECT *
FROM film
WHERE length> 100 AND title LIKE '%ARMAGEDDON%';

-- 7.3 

SELECT *
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

