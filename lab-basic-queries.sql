-- EJERCICIO 1
USE sakila;
SHOW TABLES;

-- EJERCICIO 2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- EJERCICIO 3
SELECT
title
FROM film;
SELECT
name AS language
FROM language;
SELECT
first_name
FROM staff;

-- EJERCICIO 4
SELECT
DISTINCT release_year
FROM film;

-- EJERCICIO 5
SELECT
COUNT( DISTINCT store_id) AS num_stores
FROM store;
SELECT
COUNT(*) AS num_employees
FROM staff;
SELECT
    (SELECT COUNT(*)
    FROM inventory) AS films_available,
    (SELECT COUNT(rental_id)
    FROM rental) AS film_rental;

-- EJERCICIO 6
SELECT
title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- EJERCICIO 7
SELECT
actor_id, first_name, last_name, last_update
FROM actor
WHERE first_name = '%SCARLETT%';

-- EJERCICIO 8
SELECT
title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- EJERCICIO 9
SELECT * FROM film;
SELECT
COUNT(special_features)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

