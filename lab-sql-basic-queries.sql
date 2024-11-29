USE sakila;

-- #1
SHOW Tables;

-- #2
SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;

-- #3
SELECT titles
FROM film;

SELECT first_name
FROM staff;

-- #4
SELECT distinct release_year
FROM film;

-- #5
SELECT COUNT(store_id) AS number_of_stores 
FROM store;

SELECT COUNT(staff_id) AS number_of_employee
FROM staff;

SELECT COUNT(*) AS available_for_rent
FROM inventory;

SELECT COUNT(DISTINCT inventory_id) AS rented_films
FROM rental;

SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;

-- #6
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- #7
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;

SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';