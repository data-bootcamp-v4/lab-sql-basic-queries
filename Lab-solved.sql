-- 1:
SHOW TABLES;
-- 2:
SELECT * FROM actor;
SELECT * FROM film;
SELECT * from customer;
-- 3:
SELECT title from film;
SELECT name FROM language;
SELECT first_name FROM staff;
-- 4:
SELECT DISTINCT release_year FROM film;
-- 5:
SELECT COUNT(DISTINCT store_id) FROM store;
SELECT COUNT(DISTINCT staff_id) FROM staff;
SELECT COUNT(rental_id) FROM rental;
SELECT COUNT(last_update) FROM rental;
SELECT COUNT(DISTINCT last_name) FROM actor;
-- 6:
SELECT length FROM film ORDER BY length DESC LIMIT 10;
-- 7:
SELECT first_name, last_name FROM actor WHERE first_name = 'SCARLETT';
