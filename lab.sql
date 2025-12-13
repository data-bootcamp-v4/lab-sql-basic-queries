-- 1 
SHOW TABLES;

-- 2
SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;

-- 3
SELECT title
FROM film;
SELECT name
FROM language;
SELECT first_name FROM staff;

-- 4
SELECT DISTINCT RELEASE_YEAR FROM film;

-- 5
SELECT COUNT(store_id) AS total_stores
FROM store;

SELECT COUNT(staff_id) AS total_employees
FROM staff;

SELECT
    COUNT(rental_id) AS total_rentals,
    COUNT(return_date) AS returned_rentals,
    COUNT(rental_id) - COUNT(return_date) AS currently_rented
FROM rental;

SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;

-- 6
SELECT
title,
	length
FROM film
ORDER BY length DESC;

-- 7
SELECT
    actor_id,
    first_name,
    last_name
FROM actor
WHERE first_name = 'SCARLETT';

-- BONUS
SELECT
    film_id,
    title,
    length
FROM film
WHERE
    title LIKE '%ARMAGEDDON%'
    AND length > 100;
    
    SELECT
    COUNT(film_id) AS films_with_behind_the_scenes
FROM film
WHERE
    special_features LIKE '%Behind the Scenes%';