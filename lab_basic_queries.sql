USE sakila;

SELECT *
FROM actor, film, customer;

SELECT title
FROM film;

SELECT name AS language
FROM language;

SELECT first_name 
FROM staff;

SELECT DISTINCT release_year
FROM film;

SELECT COUNT(store_id)
FROM store;

SELECT COUNT(staff_id)
FROM staff;

SELECT COUNT(film_id)
FROM inventory;

SELECT COUNT(rental_id)
FROM rental;

SELECT DISTINCT last_name
FROM actor;

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE "Scarlett";

SELECT title, length
FROM film
WHERE title LIKE "%ARMAGEDDON%" AND length > 100;

SELECT title, special_features
FROM film
WHERE special_features LIKE "%Behind the Scenes%";









