USE sakila;

SHOW TABLES;

-- 2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3
SELECT title FROM sakila.film;
SELECT name as language FROM sakila.language;
SELECT  first_name FROM staff;

-- 4
SELECT DISTINCT release_year FROM sakila.film;

-- 5
SELECT COUNT(*) AS number_of_stores FROM store;
SELECT COUNT(*) AS number_employees FROM store;
SELECT COUNT(*) AS available_film FROM film;
SELECT COUNT(DISTINCT inventory_id) as rent_films FROM rental;
SELECT COUNT(DISTINCT last_name) FROM sakila.actor;

-- 6
SELECT length, title FROM film
ORDER BY length DESC 
LIMIT 10;

-- 7
SELECT * FROM  actor
WHERE first_name = "SCARLETT";

SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT COUNT(*) AS films_with_behind_scenes FROM film
WHERE special_features LIKE '%Behind the Scenes%';
