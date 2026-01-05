Use sakila;

SHOW TABLES;

select * from actor;

select * from film;

select * from customer;

SELECT title FROM film;

SELECT name AS language FROM language;

SELECT first_name FROM staff;

SELECT DISTINCT release_year FROM film;

SELECT COUNT(*) AS number_of_stores FROM store;

SELECT COUNT(*) AS number_of_employees FROM staff;

SELECT COUNT(*) AS films_available FROM inventory;

SELECT COUNT(DISTINCT inventory_id) AS films_rented FROM rental;

SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names FROM actor;

SELECT title, length FROM film ORDER BY length DESC LIMIT 10;

SELECT * FROM actor WHERE first_name = 'SCARLETT';

SELECT title, length FROM film where title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT COUNT(*) AS behind_the_scenes_films FROM film WHERE special_features LIKE '%Behind the Scenes%';

