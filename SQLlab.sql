USE sakila;
-- 1
SHOW tables;
-- 2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- 3.1
SELECT title FROM film;
-- 3.2
SELECT name FROM language;
-- 3.3
SELECT first_name FROM staff;
-- 4
SELECT DISTINCT(release_year) FROM film;
-- 5.1
SELECT COUNT(store_id) FROM store;
-- 5.2
SELECT COUNT(staff_id) FROM staff;
-- 5.3
SELECT
  (SELECT COUNT(*) FROM inventory) AS available_for_rent,
  (SELECT COUNT(*) FROM rental) AS rented_films;
-- 5.4
SELECT DISTINCT(last_name) FROM actor;
-- 6
SELECT title FROM film 
ORDER BY length DESC 
LIMIT 10;
-- 7.1
SELECT * FROM actor WHERE first_name='SCARLETT';
-- 




