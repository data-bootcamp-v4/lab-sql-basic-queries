USE sakila;
-- 1. Display all available tables in the Sakila database:
SHOW TABLES;
--  2.Retrieve all the data from the tables actor, film, and customer:
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- 3. Retrieve specific columns from their respective tables:
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;
-- 4. Retrieve unique release years from the film table:
SELECT DISTINCT release_year FROM film;
 -- 5. Counting records for database insights:
 SELECT COUNT(DISTINCT store_id) FROM store;
 SELECT COUNT(DISTINCT staff_id) FROM staff;
 SELECT COUNT(*) AS available_films FROM film;
 SELECT COUNT(DISTINCT inventory_id) AS rented_films FROM rental;
 SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM actor;
 -- 6. Retrieve the 10 longest films:
 SELECT title, length FROM film ORDER BY length DESC LIMIT 10;
 -- 7. Use filtering techniques:
 SELECT * FROM actor WHERE first_name = 'SCARLETT';
 SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
 SELECT COUNT(*) AS films_with_behind_the_scenes FROM film WHERE special_features LIKE '%Behind the Scenes%';