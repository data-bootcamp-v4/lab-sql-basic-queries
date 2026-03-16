USE sakila;

#1
SHOW TABLES;

#2
SELECT *
FROM actor, film, customer;

#3.1
SELECT title
FROM film;

#3.2
SELECT name AS language
FROM language;

#3.3
SELECT first_name
FROM staff;

#4.
SELECT DISTINCT release_year
FROM film;

#5.1
SELECT COUNT(store_id)
FROM store;

#5.2
SELECT COUNT(staff_id)
FROM staff;

#5.3
SELECT 
    COUNT(inventory_id) AS total_available,
    COUNT(rental_id)    AS total_rented
FROM rental;

#5.4
SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

#6
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

#7.1
SELECT *
FROM actor
WHERE first_name LIKE '%SCARLETT%';

#7.2
SELECT *
FROM film
WHERE title LIKE "%ARMAGEDDON%"
AND length > 100;

#7.3
SELECT *
FROM film
WHERE special_features
LIKE "%Behind the Scenes%";

