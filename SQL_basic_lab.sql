USE sakila;
--
SHOW TABLES;
--
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
--
SELECT title FROM film;
--
SELECT name as language FROM language;
--
SELECT * FROM staff;
SELECT first_name FROM staff;
--
SELECT * FROM film;
SELECT DISTINCT release_year FROM film;
-- only unique year 2006
--
SELECT * FROM store;
SELECT count(store_id) FROM store;
-- 2 stores
--
SELECT * from staff;
SELECT count(staff_id) from staff;
-- 2 staff members
--
SELECT count(inventory_id) from inventory;
-- 4581 films in inventory
SELECT count(rental_id) from rental;
-- 16044 films rented
SELECT DISTINCT count(last_name) from actor;
-- 200 distinct last names
SELECT title, length from film
ORDER BY length desc
limit 10;
--
SELECT * from actor
WHERE first_name = 'SCARLETT';
--
SELECT * from film
WHERE title like "ARMAGEDDON" and length >= 100;
