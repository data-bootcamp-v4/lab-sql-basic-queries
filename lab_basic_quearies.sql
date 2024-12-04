USE sakila;

SHOW TABLES;

SELECT*
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;

SELECT title
FROM film;

SELECT name as language
FROM language;

SELECT first_name
FROM staff;

SELECT DISTINCT release_year
FROM film;

SELECT COUNT(store_id)
FROM store;

SELECT COUNT(staff_id)
FROM staff;

SELECT COUNT(DISTINCT inventory_id)
FROM inventory;

SELECT COUNT( DISTINCT inventory_id)
FROM rental;

SELECT  COUNT(DISTINCT last_name)
FROM actor;

SELECT *
FROM film
ORDER BY length DESC
limit 10;

SELECT *
FROM actor
WHERE first_name LIKE '%Scarlett%';

SELECT *
FROM film
WHERE length> 100 AND title LIKE '%ARMAGEDDON%';

SELECT *
FROM film
WHERE special_features LIKE '%Behind the Scenes%';