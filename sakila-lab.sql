USE sakila;

SHOW TABLES;

-- 2. Retrieve all the data from actor, film and customer
SELECT * FROM actor;

-- All data from film table
SELECT * FROM film;

-- All data from customer table
SELECT * FROM customer;
SELECT title
FROM film;


SELECT first_name
FROM staff;

SELECT DISTINCT release_year
FROM film;

SELECT COUNT(store_id) AS number_of_stores
FROM store;

SELECT COUNT(staff_id) AS number_of_employees
FROM staff;

-- Films available for rent (unique films in inventory)
SELECT COUNT(DISTINCT film_id) AS unique_films_for_rent
FROM inventory;

-- Total rentals (films that have been rented)
SELECT COUNT(rental_id) AS total_films_rented
FROM rental;

SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT';

SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;
  
  SELECT COUNT(film_id) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';