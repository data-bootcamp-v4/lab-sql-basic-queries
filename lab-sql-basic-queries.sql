USE sakila;
-- 1.
SHOW TABLES;
-- 2.
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;
-- 3.
SELECT title FROM sakila.film;

SELECT name AS language
FROM sakila.language;

SELECT first_name FROM sakila.staff;
-- 4.
SELECT DISTINCT release_year
FROM sakila.film;
-- 5.
SELECT COUNT(*) AS store_count
FROM sakila.store;

SELECT COUNT(*) AS employee_count
FROM sakila.staff;

SELECT COUNT(*) AS available_inventory
FROM sakila.inventory;
SELECT COUNT(*) AS rented_count
FROM sakila.rental;
-- 6.
SELECT film_id, title, length
FROM sakila.film
ORDER BY length DESC
LIMIT 10;

-- 7.
SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE first_name = 'SCARLETT';

SELECT film_id, title, length
FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

SELECT COUNT(*) AS films_with_behind_the_scenes
FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%';