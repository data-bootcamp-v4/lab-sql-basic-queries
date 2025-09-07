Use Sakila;
SHOW tables;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;
SELECT DISTINCT release_year FROM film;
SELECT COUNT(*) FROM store;
SELECT COUNT(*) FROM staff;
SELECT
  (SELECT COUNT(DISTINCT film_id) FROM inventory) AS films_available,
  (SELECT COUNT(DISTINCT i.film_id)
     FROM rental r
     JOIN inventory i ON r.inventory_id = i.inventory_id) AS films_rented;
SELECT COUNT(DISTINCT last_name) FROM actor;
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
  