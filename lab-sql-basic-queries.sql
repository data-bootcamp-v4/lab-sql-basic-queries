-- 1
SHOW TABLES;
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
-- 5.1 
SELECT COUNT(*) FROM store;
-- 5.2
SELECT COUNT(*) FROM staff;
-- 5.3
SELECT 
  (SELECT COUNT(*) FROM inventory) AS available_for_rent,
  (SELECT COUNT(DISTINCT inventory_id) FROM rental) AS rented;
-- 5.4
SELECT COUNT(DISTINCT last_name) FROM actor;
-- 6
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;
-- 7.1
SELECT * FROM actor
WHERE first_name = 'SCARLETT';
-- 7.2
SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;
-- 7.3
SELECT COUNT(*) FROM film
WHERE special_features LIKE '%Behind the Scenes%';
