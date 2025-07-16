use sakila;

SELECT * FROM sakila.actor;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- Questions 1-3

SELECT title FROM film;

SELECT name AS language FROM language;

SELECT first_name FROM staff;

SELECT DISTINCT release_year
FROM film
ORDER BY release_year;

-- Questions 4-7
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title FROM film;

SELECT name AS language FROM language;

SELECT first_name FROM staff;

SELECT DISTINCT release_year
FROM film
ORDER BY release_year;

SELECT COUNT(*) AS store_count
FROM store;

SELECT COUNT(*) AS employee_count
FROM staff;

SELECT COUNT(*) AS available_films
FROM inventory;

SELECT COUNT(DISTINCT inventory_id) AS rented_films
FROM rental;

SELECT COUNT(DISTINCT last_name) AS unique_last_names
FROM actor;

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


