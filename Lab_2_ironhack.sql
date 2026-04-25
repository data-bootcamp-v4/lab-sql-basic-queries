USE sakila;

#Show tables
SHOW TABLES;
#Show Actor, Film , Customer Tables
SELECT * from actor;
SELECT * FROM film;
SELECT * FROM customer;

#Select Title
SELECT title FROM film;
#Change column name from Language
SELECT name AS language
FROM language;

#Select first name
SELECT first_name FROM staff;

#Show release years, but no duplicates.
SELECT DISTINCT release_year FROM film;

#Number of stores
SELECT count(*) AS number_of_stores
from store;
#Number of employees
SELECT COUNT(*) AS number_of_employees FROM staff;

-- films available
SELECT count(*) AS films_available FROM inventory;
-- films rented
SELECT count(*) AS films_rented FROM rental;

#Distinct actor last names
SELECT count(DISTINCT last_name) AS unique_last_names FROM actor;
-- Retrieve the 10 longest films
SELECT title AS Movie_name, length AS Movie_duration
from film
ORDER BY length DESC
LIMIT 10;

-- Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor WHERE first_name = "SCARLETT";