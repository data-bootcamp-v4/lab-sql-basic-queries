USE sakila;
-- Display all available tables in the Sakila database.
SHOW tables;
-- Retrieve all the data from the tables actor, film and customer.
SELECT * FROM ACTOR;
SELECT * FROM FILM;
SELECT * FROM CUSTOMER;
-- Retrieve the following columns from their respective tables:
-- Titles of all films from the film table
SELECT TITLE
FROM FILM;
-- List of languages used in films, with the column
SELECT NAME FROM LANGUAGE;
-- List of first names of all employees from the staff table
SELECT FIRST_NAME FROM STAFF;
-- Retrieve unique release years.
SELECT DISTINCT release_year
FROM film;
-- Determine the number of stores that the company has.
SELECT COUNT(store_id) AS TOTAL_STORE FROM sakila.store;
-- Determine the number of employees that the company has.
SELECT COUNT(staff_id) AS TOTAL_STAFF FROM sakila.staff;
-- Determine how many films are available for rent and how many have been rented.
SELECT COUNT(inventory_id) AS TOTAL_AVAILABLE_FOR_RENT FROM sakila.inventory;
SELECT COUNT(rental_id) AS TOTAL_RENT FROM sakila.rental;
-- Determine the number of distinct last names of the actors in the database.
SELECT DISTINCT last_name
FROM actor;
-- Retrieve the 10 longest films.
SELECT * FROM sakila.film ORDER BY rental_duration DESC;
-- Retrieve all actors with the first name "SCARLETT".
SELECT * FROM sakila.actor
WHERE first_name LIKE 'SCARLETT';



