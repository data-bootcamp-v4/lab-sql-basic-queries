-- 1 Display all available tables 

USE sakila;
SHOW TABLES FROM sakila;

-- 2 Retrieve all the data from actor, film, customer:
SELECT * FROM actor;

SELECT * FROM film;

 SELECT * FROM customer;
-- 3
SELECT title FROM sakila.film;
SELECT name AS language FROM sakila.language;
SELECT first_name from sakila.staff;
-- 4
SELECT DISTINCT release_year FROM sakila.film; 
-- 5.1
SELECT COUNT(DISTINCT store_id) FROM sakila.store;
-- 5.2
SELECT COUNT(DISTINCT staff_id) FROM sakila.staff;
-- 5.3
SELECT COUNT(DISTINCT inventory_id) FROM sakila.inventory;
SELECT COUNT(DISTINCT rental_id) FROM sakila.rental;
-- 5.4 
SELECT COUNT(DISTINCT last_name) FROM sakila.actor;
-- 6
SELECT title, length FROM sakila.film ORDER BY length DESC LIMIT 10;
-- 7.1
SELECT * FROM sakila.actor WHERE first_name = "SCARLETT";
-- 7.2
SELECT * FROM sakila.film WHERE title like "%ARMAGEDDON%" AND length > 100;
-- 7.3
SELECT count(film_id) FROM sakila.film WHERE special_features like "%Behind the Scenes%" ;

