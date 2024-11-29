#lab 2

USE sakila;
#1
SHOW tables;
#2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
#3
#3.1
SELECT title FROM film;
#3.2
SELECT name AS language FROM language;
#3.3
SELECT first_name FROM staff;
#4
SELECT DISTINCT release_year FROM film;
#5
#5.1
SELECT COUNT(*) FROM store;
#5.2
SELECT COUNT(*) FROM staff;
#5.3
SELECT  COUNT(*) FROM film
WHERE rental_duration >0;

Describe rental;
Describe inventory;

SELECT COUNT(DISTINCT i.film_id) AS rented_films
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
WHERE r.return_date IS NOT NULL;

#5.4
SELECT COUNT(DISTINCT last_name) FROM actor;

#6
SELECT title, length 
FROM film
ORDER BY length DESC
LIMIT 10;

#7
#7.1
SELECT * FROM actor
WHERE first_name = 'SCARLETT';

#7.2
SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;

#7.3
SELECT COUNT(*) 
FROM film
WHERE description LIKE '%Behind the Scenes%';


