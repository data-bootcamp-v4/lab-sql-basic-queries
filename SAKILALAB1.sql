-- 1 
SHOW tables;
-- 2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- 3
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;
-- 4
SELECT DISTINCT release_year FROM film;
-- 5
SELECT COUNT(store_id) FROM store;
SELECT COUNT(staff_id) FROM staff;
SELECT DISTINCT COUNT(last_name) FROM actor;
-- 6
SELECT title, length FROM film ORDER BY length DESC LIMIT 10;
-- 7
SELECT * FROM actor 
WHERE first_name = "SCARLETT";
-- Bonus
SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length> 99;
SELECT * FROM film
WHERE special_features LIKE '%Behind the Scenes%';
