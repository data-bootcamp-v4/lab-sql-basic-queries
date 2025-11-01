#1
use sakila;
show tables;

#2  Retrieve all the data from the tables actor, film and customer.

SELECT *FROM actor;
SELECT *FROM film;
SELECT *FROM customer;

#3 Retrieve the following columns from their respective tables:
SELECT title  FROM film;
SELECT name AS language  FROM language;
SELECT first_name FROM staff;

#4 Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

# 5 Counting records for database insights:
SELECT COUNT(store_id) AS number_of_stores FROM store;
SELECT COUNT(staff_id) AS number_of_employees FROM staff;

SELECT COUNT(film_id) AS total_films_in_inventory FROM inventory;
SELECT COUNT(inventory_id) AS total_rental_transactions FROM rental;

SELECT COUNT(DISTINCT last_name) AS unique_name FROM actor;

# 6 Retrieve the 10 longest films.

SELECT title, length AS duration_in_minutes FROM film ORDER BY length DESC LIMIT 10;

#7 Use filtering techniques in order to

SELECT actor_id, first_name, last_name, last_update FROM actor WHERE first_name = 'SCARLETT';

# Bonus
SELECT title, length FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

