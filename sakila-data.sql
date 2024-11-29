USE sakila;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;
SELECT DISTINCT release_year FROM film;
SELECT COUNT(*) AS num_employees FROM staff;
SELECT COUNT(*) AS num_available_films
FROM inventory
WHERE rental_id IS NULL;
SELECT COUNT(*) AS num_rented_films FROM rental;
SELECT COUNT(DISTINCT last_name) AS num_distinct_last_names FROM actor;
SELECT title, release_year
FROM film
ORDER BY length DESC, replacement_cost ASC
LIMIT 10;
SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT';
SELECT mov_title, mov_year, mov_time
FROM movie
WHERE mov_title LIKE '%ARMAGEDDON%' AND mov_time > 100;
SELECT COUNT(*) AS num_behind_the_scenes_films
FROM film
WHERE special_features LIKE '%Behind the Scenes%';