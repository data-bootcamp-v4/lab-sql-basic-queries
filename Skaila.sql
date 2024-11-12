SHOW TABLES FROM sakila;
-- Retrieve all data from the actor table
SELECT * FROM sakila.actor;

-- Retrieve all data from the film table
SELECT * FROM sakila.film;

-- Retrieve all data from the customer table
SELECT * FROM sakila.customer;
SELECT title FROM sakila.film;
SELECT name AS language FROM sakila.language;
SELECT first_name FROM sakila.staff;
SELECT DISTINCT release_year FROM sakila.film;
SELECT COUNT(*) AS number_of_stores FROM sakila.store;
SELECT COUNT(*) AS number_of_employees FROM sakila.staff;
-- Number of films available for rent
SELECT COUNT(*) AS films_available_for_rent FROM sakila.film;

-- Number of films rented
SELECT COUNT(*) AS films_rented FROM sakila.rental;
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names FROM sakila.actor;
SELECT title, length FROM sakila.film
ORDER BY length DESC
LIMIT 10;
SELECT * FROM sakila.actor
WHERE first_name = 'SCARLETT';
SELECT title, length FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
SELECT COUNT(*) AS films_with_behind_the_scenes FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%';
