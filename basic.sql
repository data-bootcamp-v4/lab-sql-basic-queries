USE sakila;

# 2
SELECT * FROM actor;

SELECT * FROM film;

SELECT * FROM customer;

#3.1
SELECT title FROM film;

#3.2
SELECT name AS language 
FROM language;

#3.3
SELECT first_name FROM staff;

#4
SELECT release_year FROM film;

#5.1
SELECT DISTINCT COUNT(*) FROM store;

#5.2
SELECT DISTINCT COUNT(*) FROM staff;

#5.3
SELECT DISTINCT COUNT(*) 
FROM inventory;
SELECT COUNT(DISTINCT inventory_id) FROM rental;

#5.4
SELECT COUNT(DISTINCT last_name) FROM actor;

#6
SELECT * FROM film
ORDER BY length DESC
LIMIT 10;

#7.1
SELECT * FROM actor
WHERE first_name = 'SCARLETT';

#7.2
SELECT title, length FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;

#7.3
SELECT COUNT(*) FROM film
WHERE special_features LIKE '%Behind the Scenes%';