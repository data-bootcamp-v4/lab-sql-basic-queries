-- #1

USE sakila;

show tables;

-- #2
SELECT * FROM sakila.actor;

SELECT * FROM sakila.film;

SELECT * FROM sakila.customer;

-- #3
SELECT title FROM sakila.film;

SELECT name as language FROM sakila.language;

SELECT first_name FROM sakila.staff;

-- #4
SELECT DISTINCT release_year FROM sakila.film;

-- #5
SELECT COUNT(store_id) FROM sakila.store;

SELECT COUNT(staff_id) FROM sakila.staff;

SELECT COUNT(film_id) FROM sakila.film;

SELECT COUNT(rental_duration) FROM sakila.film;

SELECT DISTINCT last_name FROM sakila.staff;

-- #6
SELECT title,length FROM sakila.film
ORDER BY length DESC LIMIT 10;

-- #7
SELECT * FROM sakila.actor
WHERE first_name LIKE 'SCARLETT';

SELECT * FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%' and length > 100;

SELECT * FROM sakila.film
WHERE special_features LIKE '%Behind the scenes%';


