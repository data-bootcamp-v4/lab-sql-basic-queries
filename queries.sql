USE sakila;

SHOW TABLES;

SELECT * 
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

SELECT COUNT(DISTINCT(store_id)) 
FROM store;

SELECT COUNT(DISTINCT(staff_id)) 
FROM staff;

SELECT COUNT(DISTINCT(inventory_id)) 
FROM rental;

SELECT COUNT(DISTINCT(inventory_id)) 
FROM rental;

SELECT COUNT(inventory_id) 
FROM rental 
WHERE return_date IS NULL;

SELECT COUNT(DISTINCT(last_name)) 
FROM actor;

SELECT 
	title, 
	length 
FROM film 
ORDER BY length DESC 
LIMIT 10;

SELECT * 
FROM actor 
WHERE first_name="SCARLETT";

SELECT * 
FROM film 
WHERE title 
LIKE '%ARMAGEDDON%' 
	AND length>100;

SELECT * 
FROM film 
WHERE special_features LIKE '%Behind the Scenes%';
