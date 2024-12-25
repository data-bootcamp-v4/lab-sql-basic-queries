USE sakila;
SHOW tables;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
SELECT title FROM film;
SELECT name FROM language AS language;
SELECT first_name FROM staff;
SELECT distinct release_year FROM film;
SELECT COUNT(store_id) FROM store;
SELECT COUNT(staff_id) FROM staff;
SELECT 
    (SELECT COUNT(*) FROM inventory) AS available_films,
    (SELECT COUNT(*) FROM rental) AS rented_films;
SELECT COUNT(DISTINCT last_name) FROM actor;
SELECT film_id FROM film
ORDER BY length
LIMIT 10;

SELECT * FROM actor 
WHERE first_name ='SCARLETT';

SELECT * from film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100; 

SELECT * FROM film 
WHERE special_features LIKE'%Behind the Scenes%';