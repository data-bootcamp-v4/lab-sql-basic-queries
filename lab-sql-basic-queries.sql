USE sakila;

SHOW FULL TABLES;

SELECT * FROM actor;

SELECT * FROM film;

SELECT * FROM customer;

SELECT title FROM film;

SELECT name AS language FROM language;

SELECT first_name FROM staff;

SELECT DISTINCT release_year FROM film; 

SELECT COUNT(store_id) FROM store;

SELECT COUNT(staff_id) FROM staff;

SELECT COUNT(inventory_id) FROM inventory;

SELECT COUNT(rental_id) FROM rental;

SELECT  COUNT(DISTINCT last_name) FROM actor;

SELECT title, length FROM film ORDER BY length DESC LIMIT 10;

SELECT first_name FROM actor WHERE first_name = "SCARLETT";

SELECT title FROM film WHERE title LIKE "%Armageddon%" AND length > 100;

SELECT COUNT(special_features) FROM film  WHERE special_features LIKE "%Behind the Scenes%";

