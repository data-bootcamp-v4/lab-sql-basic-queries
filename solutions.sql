USE sakila;
SHOW TABLES;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
SELECT title FROM film;
SELECT name AS language
FROM language;
SELECT first_name
FROM staff;
SELECT DISTINCT release_year
FROM film
ORDER BY release_year;
SELECT COUNT(*) AS store_count
FROM store;
SELECT COUNT(*) AS employee_count
FROM staff;
-- Distinct films that exist in inventory (available for rent)
SELECT COUNT(DISTINCT film_id) AS films_available_for_rent
FROM inventory;

-- Distinct films that appear in rentals (have been rented at least once)
SELECT COUNT(DISTINCT i.film_id) AS films_that_have_been_rented
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id;
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;
SELECT film_id, title, length
FROM film
ORDER BY length DESC, title ASC
LIMIT 10;
SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT';
SELECT film_id, title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;
-- special_features is a SET; FIND_IN_SET ensures exact match within the list
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE FIND_IN_SET('Behind the Scenes', special_features) > 0;
