USE sakila;
SHOW TABLES;
SELECT*FROM actor;
SELECT*FROM film;
SELECT*FROM customer;
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names FROM actor;
SELECT COUNT(*) AS number_of_stores FROM store;
SELECT COUNT(*) AS number_of_employees FROM staff;
SELECT COUNT(*) AS available_films FROM film;
SELECT COUNT(*) AS rented_films FROM rental;
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;
SELECT * FROM actor
WHERE first_name = 'SCARLETT';
-- Bonus--
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

SELECT COUNT(*) AS behind_the_scenes_count
FROM film
WHERE description LIKE '%Behind the Scenes%';









