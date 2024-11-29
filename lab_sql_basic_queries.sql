USE sakila;

-- Display all available tables
SHOW TABLES; 

-- Retrieve all the data from the tables actor, film, and customer
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

-- Retreive all film's titles from film table
SELECT title FROM sakila.film;

-- Retrieve list of languages from language table
SELECT name as language   
FROM sakila.language;

-- Retrieve list of first names of all employee from staff table
SELECT first_name FROM sakila.staff;

-- Retrieve unique release years
SELECT DISTINCT release_year FROM sakila.film;

-- Determine number of stores that the company has
SELECT COUNT(DISTINCT store_id) FROM sakila.store;			-- here we put DISTINCT to make sure there is no double data

-- Determine the number of employees that the company has
SELECT COUNT(DISTINCT staff_id) FROM sakila.staff;

-- Determine how many films are available for rent
SELECT COUNT(*) FROM sakila.inventory;

-- Determine how many films have been rented
SELECT COUNT(*) FROM sakila.rental;

-- Determine the number of distinct last names of the actors 
SELECT COUNT(DISTINCT last_name) FROM sakila.actor;

-- Retrieve the 10 longest films
SELECT title, length
FROM sakila.film
ORDER BY length DESC
LIMIT 10;

-- Use filtering techniques to retrieve all actors with the first name "SCARLETT"
SELECT first_name, last_name
FROM sakila.actor
WHERE first_name = "SCARLETT";

-- Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes
SELECT *
FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) 
FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%';