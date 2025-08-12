USE sakila;

-- 1.
SHOW TABLES;

-- 2.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
SELECT * FROM store;
-- 3.
-- 3.1.
SELECT title FROM film;
-- 3.2.
SELECT name AS language FROM language;
-- 3.3.
SELECT first_name FROM staff;

-- 4.
SELECT DISTINCT release_year
FROM film
ORDER BY release_year;

-- 5.
-- 5.1.
SELECT COUNT(*) AS n_stores FROM store;

-- 5.2.
SELECT COUNT(*) AS n_employees FROM staff;

-- 5.3.
SELECT
  (SELECT COUNT(*) FROM inventory) AS total_inventory,
  (SELECT COUNT(DISTINCT inventory_id) FROM rental WHERE return_date IS NULL)  AS rented_now,
  (SELECT COUNT(*) FROM inventory) - (SELECT COUNT(DISTINCT inventory_id) FROM rental WHERE return_date IS NULL) AS available_now; 
  
-- 5.4.
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;

-- 6.
SELECT title, length
FROM film
ORDER BY length DESC, title
LIMIT 10;

-- 7. 
-- 7.1.
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2.
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;
  
-- 7.3.
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE FIND_IN_SET('Behind the Scenes', special_features) > 0;