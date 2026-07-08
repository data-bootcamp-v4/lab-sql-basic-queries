USE sakila;

-- Challenge 1 --

SHOW tables;

-- Challenge 2 --

SELECT *
FROM actor;

SELECT *
FROM film;

SELECT * 
FROM customer;

-- Challenge 3 --

-- Challenge 3.1 --

SELECT title 
FROM film;

-- Challenge 3.2 --

SELECT name AS language
FROM language;

-- Challenge 3.3 --

SELECT first_name
FROM staff;

-- Challenge 4 --

SELECT DISTINCT release_year 
FROM film;

-- Challenge 5 --

-- Challenge 5.1 --

SELECT COUNT(*)
FROM store;

-- Challenge 5.2 --

SELECT COUNT(*)
FROM staff;

-- Challenge 5.3 --

SELECT COUNT(inventory_id)
FROM inventory;

SELECT COUNT(rental_id)
FROM rental;

-- Challenge 5.4 --

SELECT COUNT(DISTINCT last_name)
FROM actor;

-- Challenge 6 --

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- Challenge 7 --

-- Challenge 7.1 --
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- Challenge 7.2 --

SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;


-- Challenge 7.3 --

SELECT COUNT(title)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';