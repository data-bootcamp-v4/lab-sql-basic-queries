USE sakila;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title FROM film;

SELECT * FROM language;
SELECT name AS language FROM language;

SELECT * FROM staff;
SELECT first_name FROM staff;

SELECT DISTINCT release_year FROM film;

SELECT COUNT(*) AS number_of_store FROM store;

SELECT COUNT(*) AS number_of_employees FROM staff;

SELECT COUNT(DISTINCT f.film_id) AS films_available_for_rent
FROM film f
JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id AND r.return_date IS NULL
WHERE r.inventory_id IS NULL;

SELECT COUNT(DISTINCT i.film_id) AS films_that_have_been_rented
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id;

SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM actor;

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT';

SELECT film_id, title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';







