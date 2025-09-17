CREATE DATABASE sakila;

USE sakila;
SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title FROM film;

SELECT name AS language FROM language;

SELECT first_name FROM staff;

SELECT DISTINCT release_year FROM film;

SELECT COUNT(*) AS num_stores FROM store;

SELECT COUNT(*) AS num_employees FROM staff;

SELECT COUNT(*) AS films_available FROM inventory;

SELECT COUNT(*) AS films_rented FROM rental;

SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names FROM actor;

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
	AND length > 100;
    
SELECT COUNT(*) AS films_with_bts
FROM film
WHERE special_features LIKE '%Behind the Scenes%';