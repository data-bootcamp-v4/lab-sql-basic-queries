USE sakila;
-- Display all available tables
SHOW tables FROM sakila;
SELECT *
FROM sakila.actor;
-- Retrieve all the data from the tables actor, film and customer.
SELECT *
FROM sakila.actor; 
SELECT *
FROM sakila.film;
SELECT *
FROM sakila.customer;
-- Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
SELECT title  
FROM film;
-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name AS language
FROM language;
-- 3.3 List of first names of all employees from the staff table
SELECT *
FROM staff;