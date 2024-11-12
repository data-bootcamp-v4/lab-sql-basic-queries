SHOW TABLES IN sakila;
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
SELECT COUNT(*) AS store_count
FROM sakila.store;
SELECT COUNT(*) AS employee_count
FROM sakila.staff;
SELECT COUNT(*) AS available_films
FROM sakila.inventory;
SELECT COUNT(DISTINCT inventory_id) AS rented_films
FROM sakila.rental;
SELECT COUNT(DISTINCT last_name) AS unique_last_names
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
SELECT COUNT(*) AS behind_the_scenes_count
FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%';