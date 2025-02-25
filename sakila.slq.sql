USE sakila

SHOW TABLES;

SELECT * 
FROM actor;
SELECT *
 FROM film;
SELECT * 
FROM customer;

SELECT title 
FROM film;


SELECT first_name 
FROM staff;

SELECT DISTINCT release_year 
FROM film;


SELECT COUNT(*) AS number_of_stores 
FROM store;
SELECT COUNT(*) AS number_of_employees 
FROM staff;
SELECT COUNT(*) AS available_films
 FROM inventory WHERE inventory_id NOT IN (SELECT inventory_id FROM rental WHERE return_date IS NULL);

SELECT COUNT(*) AS rented_films
 FROM rental WHERE return_date IS NULL;
 
 SELECT title, length
 FROM film 
 ORDER BY length DESC LIMIT 10;

SELECT * 
FROM actor
 WHERE first_name = 'SCARLETT';

SELECT title, length 
FROM film
 WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

