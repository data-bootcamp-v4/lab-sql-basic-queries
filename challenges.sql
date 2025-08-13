USE sakila;

SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title 
FROM film;

SELECT name AS language
FROM language;

SELECT first_name
FROM staff;

SELECT DISTINCT release_year
FROM film
ORDER BY release_year;

SELECT COUNT(*) AS total_stores
 FROM store;
 
 SELECT COUNT(*) AS total_employees
 FROM staff;
 
SELECT COUNT(*) AS total_films_available
FROM inventory;

SELECT COUNT(*) AS films_currently_rented
FROM rental WHERE return_date is NULL;

SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

SELECT title,Length
FROM film
ORDER BY Length DESC
LIMIT 10;

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT';



 




