USE sakila;

-- Display all available tables in the Sakila database.
SHOW TABLES;

-- Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- Retrieve films column from film table
SELECT title FROM film;

-- Retrieve languages column from language table
SELECT name FROM language;

-- Retrieve first names from staff table
SELECT first_name FROM staff;

-- Select unique years from film table
SELECT DISTINCT release_year FROM film;

-- Number of stores in the store table
SELECT COUNT(*) AS num_stores FROM store;

-- Number of employees (staff) in the staff table
SELECT COUNT(*) AS num_employees FROM staff;

-- Number of films available for rent


-- Number of films that have been rented
SELECT COUNT(DISTINCT rental.inventory_id) AS films_rented 
FROM rental;

-- Number of distinct last names of actors
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names 
FROM actor;


-- Retrieve the 10 longest films
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

-- actors with the first name Scarlett
SELECT * FROM actor
WHERE first_name LIKE 'SCARLETT';

-- Retrieve all movies that have "ARMAGEDDON" in their title and have a duration longer than 100 minutes
SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%' 
AND length > 100;


