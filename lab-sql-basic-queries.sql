-- LAB | SQL Basic Queries

-- 1
USE sakila;
SHOW TABLES;

-- 2
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

-- 3
-- 3.1
SELECT title FROM sakila.film;
-- 3.2
SELECT name AS language FROM sakila.language;
-- 3.3
SELECT first_name FROM sakila.staff;

-- 4
SELECT DISTINCT(release_year) FROM sakila.film;

-- 5
-- 5.1
SELECT COUNT(DISTINCT(store_id)) FROM sakila.store;
-- 5.2
SELECT COUNT(DISTINCT(staff_id)) FROM sakila.staff;
-- 5.3
SELECT * FROM sakila.rental;
SELECT COUNT(*) AS Rented_Films
FROM sakila.rental
WHERE return_date IS NULL;

SELECT * FROM sakila.inventory;
SELECT COUNT(*) AS Total_Inventory
FROM sakila.inventory;

SELECT (SELECT COUNT(*) FROM sakila.inventory)  -  (SELECT COUNT(*) FROM sakila.rental WHERE return_date IS NULL) AS No_Rented_Films;

-- 5.4
SELECT COUNT(DISTINCT(last_name)) FROM sakila.actor;

-- 6
SELECT * FROM sakila.film
ORDER BY length DESC
LIMIT 10;

--  7
-- 7.1
SELECT * FROM actor
WHERE first_name = "SCARLETT";

-- 7.2
SELECT * FROM film
WHERE title LIKE "%ARMAGEDDON%" AND length > 100;

-- 7.3
SELECT COUNT(*) AS Behind_the_scenes FROM film
WHERE special_features LIKE "%Behind the Scenes%";