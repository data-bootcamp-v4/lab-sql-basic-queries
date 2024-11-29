USE sakila;

SHOW FULL TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title from FILM;

SELECT * FROM language;

SELECT name from language as language;

SELECT first_name from staff;

SELECT DISTINCT release_year from film;

SELECT COUNT(*) FROM store;

SELECT COUNT(*) FROM staff;

SELECT COUNT(*) FROM film;

SELECT * FROM inventory;
SELECT COUNT(*) FROM inventory;

SELECT * FROM rental;
SELECT COUNT(*) FROM rental;

SELECT DISTINCT last_name FROM actor;
SELECT COUNT(DISTINCT last_name) FROM actor;

SELECT *
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT * FROM actor
WHERE first_name IN ('Scarlett');

SELECT * 
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT COUNT(*)
FROM film
WHERE special_features LIKE '%Behind the scenes%';
