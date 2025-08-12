USE sakila;
SELECT DATABASE();
SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title FROM film;

SELECT name AS language FROM language;

SELECT first_name FROM staff;

SELECT DISTINCT release_year
FROM film
ORDER BY release_year;

SELECT COUNT(*) AS num_stores FROM store;

SELECT COUNT(*) AS total_inventory_items FROM inventory;

SELECT COUNT(DISTINCT inventory_id) AS inventory_items_ever_rented
FROM rental;

SELECT COUNT(DISTINCT film_id) AS distinct_films_in_inventory
FROM inventory;

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
    
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';    

