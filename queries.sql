USE sakila;
#1
SHOW TABLES;
#2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
#3
SELECT DISTINCT title FROM film;
SELECT * FROM language;
SELECT DISTINCT name FROM language;
SELECT * FROM staff;
SELECT DISTINCT first_name FROM staff;
#4
SELECT DISTINCT release_year FROM film;
#5.1
SELECT count(store_id) 
FROM store;
#5.2
SELECT count(staff_id)
FROM staff;
#5.3 Determine how many films are available for rent and how many have been rented.

SELECT COUNT(*) FROM rental;
SELECT COUNT(*) FROM inventory;

#5.4
SELECT COUNT(last_name) 
FROM actor;

#6
SELECT *
FROM film
ORDER BY length DESC
LIMIT 10;
#7.1
SELECT first_name
FROM actor
WHERE first_name = "SCARLETT";

