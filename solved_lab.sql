use sakila;

SELECT * FROM sakila.actor;

SELECT * FROM sakila.film;

SELECT * FROM sakila.customer;

SELECT title 
FROM sakila.film;

SELECT name AS language 
FROM sakila.language;

SELECT first_name 
FROM sakila.staff;

SELECT DISTINCT release_year 
FROM sakila.film;

SELECT COUNT(store_id) AS number_of_stores 
FROM sakila.store;

SELECT COUNT(staff_id) AS number_of_employees 
FROM sakila.staff;

SELECT COUNT(inventory_id) AS number_of_films_available 
FROM sakila.inventory;

SELECT COUNT(rental_id) AS number_of_films_rented 
FROM sakila.rental;

SELECT COUNT(DISTINCT last_name) AS number_of_distinct_actor_last_names 
FROM sakila.actor;

SELECT title, length 
FROM sakila.film
ORDER BY length DESC
LIMIT 10;

SELECT first_name, last_name 
FROM sakila.actor
WHERE first_name = 'SCARLETT';

SELECT title, length 
FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%' 
AND length > 100;

SELECT COUNT(*) AS number_of_films_with_behind_the_scenes 
FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%';