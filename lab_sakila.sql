
USE sakila;

SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM address;
SELECT * FROM sakila.category;
SELECT * FROM sakila.city;
SELECT * FROM sakila.country;
SELECT * FROM sakila.customer;
SELECT * FROM sakila.film;
SELECT * FROM sakila.film_actor;
SELECT * FROM sakila.film_category;
SELECT * FROM sakila.film_text;
SELECT * FROM sakila.inventory;
SELECT * FROM sakila.language;
SELECT * FROM sakila.payment;
SELECT * FROM sakila.rental;
SELECT * FROM sakila.staff;
SELECT * FROM sakila.store;


SELECT title FROM sakila.film;


SELECT name AS language FROM language; 

SELECT first_name FROM staff;

SELECT DISTINCT release_year FROM film;

SELECT COUNT(*) AS store_count FROM store;

SELECT COUNT(*) AS employee_count FROM sakila.staff;

SELECT COUNT(DISTINCT film_id) AS films_available FROM inventory;

SELECT COUNT(DISTINCT inventory_id) AS films_rented FROM rental;



SELECT COUNT(DISTINCT last_name) AS unique_actor_last_names FROM actor;

SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;


SELECT * FROM actor
WHERE first_name = 'SCARLETT';


-- bonus

SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;
  
  
  SELECT COUNT(*) AS behind_scenes_films
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

















