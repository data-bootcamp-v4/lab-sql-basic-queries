USE sakila;
SHOW TABLES FROM sakila;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;

SELECT DISTINCT release_year FROM film;

SELECT COUNT(store_id) AS stores_number
FROM store;

SELECT COUNT(staff_id) AS staff_number
FROM staff;

SELECT (SELECT COUNT(inventory_id) FROM sakila.inventory) - (SELECT COUNT(DISTINCT inventory_id) FROM sakila.rental) AS available_for_rent, 
COUNT(DISTINCT inventory_id) AS rented FROM sakila.rental;

SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names FROM sakila.actor;

SELECT length FROM film
ORDER BY length DESC
LIMIT 10;

SELECT * from actor
WHERE first_name = 'SCARLETT';