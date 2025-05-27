SHOW TABLES FROM sakila;
USE sakila;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title FROM sakila.film;
SELECT * FROM language;
SELECT name AS language FROM sakila.language;
SELECT * FROM sakila.staff;
SELECT first_name FROM sakila.staff;

SELECT DISTINCT release_year FROM sakila.film;

SELECT COUNT(*) AS store_count FROM sakila.store;
SELECT COUNT(*) AS employee_count FROM sakila.staff;

-- Films available for rent (count distinct films in inventory)
SELECT COUNT(DISTINCT film_id) AS films_available_for_rent FROM sakila.inventory;

SELECT COUNT(DISTINCT last_name) AS unique_actor_last_names FROM sakila.actor;

SELECT COUNT(DISTINCT film_id) AS films_rented
FROM sakila.inventory
WHERE inventory_id IN (SELECT DISTINCT inventory_id FROM sakila.rental);

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT * 
FROM actor
WHERE first_name = 'SCARLETT';

SELECT * 
FROM actor
WHERE first_name LIKE 'SCARLETT';

SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;
  
SELECT COUNT(*) AS behind_the_scenes_count
FROM film
WHERE special_features LIKE '%Behind the Scenes%';









