USE sakila;
SHOW TABLES;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
SELECT title FROM film;
SELECT * FROM language;
SELECT name as language FROM language;
SELECT * FROM staff;
SELECT first_name FROM staff;
SELECT DISTINCT release_year FROM film;
SELECT COUNT(*) FROM store;
SELECT COUNT(*) FROM staff;
SELECT COUNT(*) FROM film;
SELECT COUNT(*) FROM rental;
SELECT COUNT(DISTINCT last_name) FROM actor;
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;
SELECT * FROM actor
WHERE first_name="SCARLETT";
SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length>100;
SELECT COUNT(*) FROM film
WHERE special_features LIKE '%Behind the Scenes%';
