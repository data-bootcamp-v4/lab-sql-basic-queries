USE sakila;

SHOW TABLES;

SELECT * FROM actor, film, customer;

SELECT title
FROM film;

SELECT name
FROM language;

SELECT first_name
FROM staff;

SELECT DISTINCT release_year
FROM film;

SELECT COUNT(DISTINCT store_id) AS total_stores
FROM store;

SELECT COUNT(DISTINCT staff_id) AS total_staff
FROM staff;

SELECT COUNT(DISTINCT film_id) AS total_film
FROM inventory;

SELECT DISTINCT i.film_id
FROM inventory i
INNER JOIN rental r ON i.inventory_id = r.inventory_id;

SELECT COUNT(DISTINCT i.film_id) AS total_peliculas_rentadas
FROM inventory i
INNER JOIN rental r ON i.inventory_id = r.inventory_id;

SELECT title
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT first_name, last_name
FROM actor
WHERE first_name = "SCARLETT";

SELECT title
FROM film
WHERE title LIKE "%ARMAGEDDON%"
AND length > 100;

SELECT title
FROM film
WHERE special_features LIKE "%Behind the Scenes%";