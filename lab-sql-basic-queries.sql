use sakila;
#1
SHOW TABLES;

#2
SELECT * 
FROM actor;

SELECT *
FROM film; 
 
 SELECT *
 FROM customer;
 
#3
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;

#4
SELECT DISTINCT release_year FROM film;

#5.1
SELECT COUNT(*) FROM store;
#5.2
SELECT COUNT(*) FROM staff;

#5.3
SELECT COUNT(DISTINCT film_id) AS total_films_available FROM inventory;

SELECT COUNT(DISTINCT inventory_id) AS films_rented
FROM rental
WHERE return_date IS NULL;

#5.4
SELECT COUNT(DISTINCT last_name) AS distinct_last_name
FROM actor;

#6
SELECT title as film_title,
length AS film_length
FROM film
ORDER BY film_length DESC
LIMIT 10;

#7
SELECT *
FROM actor
WHERE first_name = "SCARLETT";

#7.2
SELECT *
FROM film
WHERE title like "%ARMAGEDDON%" AND length > 100;

SELECT *
FROM film
WHERE special_features like "%Behind the Scenes%";