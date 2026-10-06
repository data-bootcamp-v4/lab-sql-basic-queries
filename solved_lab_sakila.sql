USE sakila;
SHOW TABLES;
SHOW FULL TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title FROM film;
SELECT * FROM language;
SELECT name AS language FROM language;
SELECT * FROM staff;
SELECT first_name FROM staff;

SELECT * FROM film;
SELECT DISTINCT release_year FROM film;

SELECT * FROM store;
SELECT COUNT(store_id) FROM store;

SELECT * FROM staff;
SELECT COUNT(*) FROM staff;

SELECT COUNT(*) FROM rental;
SELECT COUNT(*) FROM inventory;

SELECT COUNT(DISTINCT last_name) FROM actor;

SELECT title, length 
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT * FROM actor;
SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = "SCARLETT";

SELECT * FROM film;
SELECT film_id, title, length AS duration
FROM film
WHERE title LIKE "%ARMAGEDDON%" AND length > 100;

SELECT * FROM film;
SELECT COUNT(*)
FROM film
WHERE special_features LIKE "%Behind the Scenes%";









