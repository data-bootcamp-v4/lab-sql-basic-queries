-- EX1
USE sakila;
SELECT * from actor;
SELECT * from film;
SELECT * from customer;

-- EX2 AND 3
SELECT title from film;
SELECT name from language;
SELECT first_name from staff;

-- EX4

SELECT DISTINCT(release_year) from film;

-- EX5
SELECT COUNT(store_id) from store;
SELECT COUNT(staff_id) from staff;
SELECT COUNT(rental_id) from rental
WHERE inventory_id > 0;
SELECT COUNT(DISTINCT last_name) from actor;

-- EX6
SELECT title, length from film
ORDER BY length DESC
LIMIT 10;

-- EX7
SELECT first_name, last_name FROM actor;

-- BONUS
SELECT title from film
WHERE length >99 AND title LIKE '%ARMAGEDDON';

SELECT COUNT(title) from film
WHERE special_Features LIKE '%Behind the Scenes';
WHERE first_name = 'SCARLETT'
