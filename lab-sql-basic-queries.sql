SHOW TABLES IN sakila;

SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

SELECT title FROM sakila.film;

SELECT name AS language FROM sakila.language;

SELECT first_name FROM sakila.staff;

SELECT DISTINCT release_year FROM sakila.film;

SELECT COUNT(*) AS number_of_stores FROM sakila.store;

SELECT COUNT(*) AS number_of_stores FROM sakila.store;

SELECT COUNT(*) AS number_of_employees FROM sakila.staff;

SELECT COUNT(*) AS available_films FROM sakila.film;
SELECT COUNT(DISTINCT inventory_id) AS rented_films FROM sakila.rental;

SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM sakila.actor;

SELECT title, length FROM sakila.film ORDER BY length DESC LIMIT 10;

SELECT * FROM sakila.actor WHERE first_name = 'SCARLETT';