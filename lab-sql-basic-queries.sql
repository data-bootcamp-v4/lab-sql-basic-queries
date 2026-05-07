USE sakila;
-- 1
SHOW FULL TABLES;
-- 2
SELECT * 
from actor;
SELECT * FROM film; 
SELECT * from customer; 
-- 3.1 Titles of all films
SELECT title
FROM film;
-- 3.2 Languages used in films
SELECT name AS language
FROM language; 
-- 3.3 
SELECT first_name
FROM staff; 
-- 4
SELECT DISTINCT release_year
FROM film;
-- 5
-- 5.1
SELECT COUNT(*) AS number_of_stores
FROM store;
-- 5.2
SELECT count(*) AS number_of_employees
FROM staff; 
-- 5.3 number of films available for rent 
SELECT COUNT(*) films_availabe_for_rent
FROM inventory;
-- number of filsm rented
SELECT COUNT(*) AS films_rented
FROM rental;
-- 5.4
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor; 
-- 6
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;
-- 7
SELECT * 
FROM actor 
WHERE first_name = "SCARLETT"


