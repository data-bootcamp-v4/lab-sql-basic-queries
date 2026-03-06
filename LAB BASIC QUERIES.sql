USE sakila;
SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title FROM film; 
SELECT name FROM language;
SELECT first_name FROM staff;

SELECT DISTINCT release_year FROM film;

SELECT COUNT(store_id) FROM store;
SELECT COUNT(staff_id) FROM staff;

SELECT * FROM rental;
SELECT COUNT(*) FROM inventory;
SELECT COUNT(*) FROM rental;

SELECT DISTINCT COUNT(last_name) FROM actor;

SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10; 

SELECT * FROM actor
WHERE first_name = 'SCARLETT';


SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT COUNT(*) FROM film
WHERE special_features = 'Behind the Scenes';