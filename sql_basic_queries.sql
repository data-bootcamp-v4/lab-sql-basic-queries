USE sakila;

-- 1. Display all tables
SHOW TABLES;

-- 2. All data from actor
SELECT * FROM actor;

-- All data from film
SELECT * FROM film;

-- All data from customer
SELECT * FROM customer;

-- 3.1 Film titles
SELECT title
FROM film;

-- 3.2 Languages
SELECT name AS language
FROM language;

-- 3.3 Staff first names
SELECT first_name
FROM staff;

-- 4. Unique release years
SELECT DISTINCT release_year
FROM film;

-- 5.1 Number of stores
SELECT COUNT(*) AS number_of_stores
FROM store;

-- 5.2 Number of employees
SELECT COUNT(*) AS number_of_employees
FROM staff;

-- 5.3 Films available for rent
SELECT COUNT(DISTINCT film_id) AS films_available
FROM inventory;

-- Films that have been rented
SELECT COUNT(DISTINCT inventory_id) AS films_rented
FROM rental;

-- 5.4 Distinct actor last names
SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

-- 6. Ten longest films
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1 Actors named SCARLETT
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 ARMAGEDDON movies longer than 100 minutes
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

-- 7.3 Films with Behind the Scenes content
SELECT COUNT(*) AS behind_the_scenes_films
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

