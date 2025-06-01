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

SELECT count(store_id)
FROM store;

SELECT count(staff_id)
FROM staff;

SELECT count(DISTINCT film_id)
FROM inventory;

SELECT count(DISTINCT film_id)
FROM inventory i, rental r
WHERE i.inventory_id = r.inventory_id;

SELECT count(DISTINCT last_name)
FROM actor;

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

SELECT *
FROM film
WHERE title LIKE "ARMAGEDDON%" AND length > 100;

SELECT *
FROM film
WHERE title LIKE "ARMAGEDDON%";

SELECT count(*)
FROM film
WHERE special_features LIKE "Behind the Scenes%";
