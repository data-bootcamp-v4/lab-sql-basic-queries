-- 1. 
SHOW TABLES;

-- 2. Retrieve all the data from the tables actor, film and customer.
SELECT *
FROM actor; 

SELECT * 
FROM film;

SELECT *
FROM customer; 

-- 3. 
-- 3.1 
SELECT title
FROM film;

-- 3.2 
SELECT name AS language
FROM language;

-- 3.3
SELECT first_name 
FROM staff;

-- 4. 
SELECT DISTINCT release_year
FROM film;

-- 5. 
-- 5.1
SELECT COUNT(DISTINCT store_id) AS count_stores
FROM store;

-- 5.2 
SELECT COUNT(DISTINCT staff_id) AS count_staff
FROM staff;

-- 5.3 
SELECT
	(SELECT COUNT(*) FROM inventory) AS films_available,
    (SELECT COUNT(DISTINCT inventory_id) FROM rental) AS films_rented;
    
-- 5.4
SELECT COUNT(DISTINCT last_name) AS count_last_name
FROM actor;

-- 6. 
SELECT title
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7. 
SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT'; 

-- Bonus
-- 7.2
SELECT film_id, title
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3 
SELECT COUNT(film_id)
FROM film
WHERE special_features LIKE '%Behind the Scenes%'; 