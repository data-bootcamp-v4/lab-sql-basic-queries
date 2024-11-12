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

-- 5
SELECT COUNT(*) AS store_count FROM store;
SELECT COUNT(*) AS employee_count FROM staff;

SELECT COUNT(DISTINCT film_id) AS available_for_rent FROM inventory;
SELECT COUNT(DISTINCT film_id) AS rented_films FROM inventory;

SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names FROM actor;

-- 6
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

-- 7
SELECT * FROM actor
WHERE first_name = 'SCARLETT';

-- bonus
SELECT title, length FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT COUNT(*) AS behind_the_scenes_count FROM film
WHERE special_features LIKE '%Behind the Scenes%';

