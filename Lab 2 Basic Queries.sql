USE sakila;
SHOW Tables;
SELECT *
FROM actor, film, customer;

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

SELECT COUNT(film_id)
FROM film;

SELECT COUNT(rental_date)
FROM rental;

SELECT DISTINCT COUNT(last_name)
FROM actor;

SELECT length 
FROM film
ORDER BY length DESC;

SELECT *
FROM actor
WHERE first_name = "Scarlett";

SELECT *
FROM film
WHERE title LIKE "% Armageddon %"and rental_duration > 100;