-- 1.
SHOW TABLES;

-- 2.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.1
SELECT Title FROM film;
-- 3.2
SELECT name AS language FROM language;
-- 3.3
SELECT first_name FROM staff;

-- 4.
SELECT DISTINCT release_year FROM film;

-- 5.1
SELECT COUNT(*) AS store_count FROM store;
-- 5.2
SELECT COUNT(*) AS employee_count FROM staff;
-- 5.3
SELECT COUNT(DISTINCT film_id) AS films_available FROM inventory;
SELECT COUNT(DISTINCT rental_id) AS films_rented FROM rental;
-- 5.4
SELECT COUNT(DISTINCT last_name) AS unique_last_names FROM actor;

-- 6.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1
SELECT * 
FROM actor
WHERE first_name = 'SCARLETT';
-- 7.2
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;
-- 7.3
SELECT COUNT(*) AS behind_the_scenes_count
FROM film
WHERE special_features LIKE '%Behind the Scenes%';