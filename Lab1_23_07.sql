-- Active: 1721290975934@@127.0.0.1@3306@sakila
--Use the sakila database to do the following tasks:
--Display all available tables in the Sakila database.

USE sakila;
SHOW TABLES;

--Retrieve all the data from the tables actor, film and customer.

SELECT * FROM actor;
SELECT * FROM film;
SELECT * from customer;

--Retrieve the following columns from their respective tables:
--3.1 Titles of all films from the film table
SELECT title FROM sakila.film;
--3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name AS language FROM language;
--3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;
--Retrieve unique release years.
SELECT DISTINCT sakila.film.release_year FROM sakila.film;


--Counting records for database insights:

--5.1 Determine the number of stores that the company has.
SELECT COUNT(DISTINCT store_id) FROM store;
--5.2 Determine the number of employees that the company has.
SELECT COUNT (staff_id) FROM staff;
--5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT (inventory_id) FROM inventory;
SELECT DISTINCT COUNT (*) FROM rental;
--5.4 Determine the number of distinct last names of the actors in the database.
SELECT DISTINCT COUNT (last_name) FROM sakila.actor;
--Retrieve the 10 longest films.
SELECT * FROM film ORDER BY length DESC LIMIT 10;
--Use filtering techniques in order to:

--7.1 Retrieve all actors with the first name "SCARLETT".
--BONUS:
SELECT * FROM actor WHERE first_name = "SCARLETT";
--7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM film WHERE title LIKE "%ARMAGEDDON%" AND length > 100;
--Hint: use LIKE operator. More information here.
--7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT (*) FROM film WHERE special_features LIKE "%Behind the Scenes%";

