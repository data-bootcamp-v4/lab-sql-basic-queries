SHOW TABLES;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;
SELECT DISTINCT release_year FROM film;
SELECT COUNT(*) AS employee_count FROM staff;
-- Films available for rent
SELECT COUNT(*) AS films_available FROM film;

-- Films rented
SELECT COUNT(*) AS films_rented FROM rental;
SELECT COUNT(DISTINCT last_name) AS unique_actor_last_names FROM actor;
SELECT title, length 
FROM film
ORDER BY length DESC
LIMIT 10;
SELECT * 
FROM actor
WHERE first_name = 'SCARLETT';
SELECT * 
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
SELECT COUNT(*) AS behind_the_scenes_count
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

