USE sakila;

SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title From film;

select name AS language FROM language;

SELECT first_name FROM staff;

Select distinct release_year From film;

SELECT COUNT(*) FROM store;
SELECT COUNT(*) FROM staff;
SELECT COUNT(*) FROM inventory;
SELECT COUNT(*) FROM rental;

Select count(distinct last_name) from actor;

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;

SELECT COUNT(*)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';


SELECT first_name, last_name FROM actor LIMIT 5;
