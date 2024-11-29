USE sakila;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title
FROM film;

SELECT name
FROM language;

SELECT first_name
FROM staff;

SELECT DISTINCT release_year
FROM film;

SELECT release_year
FROM film;

#number of stores: 2
SELECT DISTINCT store_id
FROM inventory;

#number of employees: 2
SELECT staff_id FROM staff;
SELECT * FROM staff;

SELECT * FROM staff
WHERE staff_id IS NULL; 
#checking if the row is null or it was just the id.


SELECT rental_date, return_date
FROM rental;

SELECT COUNT(inventory_id) AS available, 
COUNT(rental_date) AS rented
FROM rental;

SELECT DISTINCT last_name
FROM actor;

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT CONCAT(first_name, " ", last_name)
FROM actor
WHERE first_name LIKE "SCARLETT";

SELECT title
FROM film
WHERE title LIKE "%ARMAGEDDON%" AND length > 100;

SELECT special_features
FROM film;

SELECT special_features
FROM film;

SELECT title
FROM film
WHERE special_features LIKE "%behind the scenes%";
