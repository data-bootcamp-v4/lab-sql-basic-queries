show processlist;
USE sakila;  -- Switch to the database

/*Display all available tables in the Sakila database.

Retrieve all the data from the tables actor, film and customer.

Retrieve the following columns from their respective tables:

3.1 Titles of all films from the film table
3.2 List of languages used in films, with the column aliased as language from the language table
3.3 List of first names of all employees from the staff table
Retrieve unique release years.

Counting records for database insights:

5.1 Determine the number of stores that the company has.
5.2 Determine the number of employees that the company has.
5.3 Determine how many films are available for rent and how many have been rented.
5.4 Determine the number of distinct last names of the actors in the database.
Retrieve the 10 longest films.

Use filtering techniques in order to:

7.1 Retrieve all actors with the first name "SCARLETT".*/

-- Display all available tables in the Sakila database.
-- SELECT * FROM staff;


-- Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.1 Titles of all films from the film table
SELECT title
FROM film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name AS Language
FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name
FROM staff;

-- 5,1
SELECT COUNT(*) AS store_id
FROM store;

-- 5.2
SELECT COUNT(*) AS number_of_employees
FROM staff;

-- 5.3
UNLOCK TABLES;
SELECT COUNT(*) AS films_available_for_rent
FROM inventory;

-- Films that have been rented
SELECT COUNT(DISTINCT inventory_id) AS films_rented
FROM rental;

-- Films available for rent
SELECT COUNT(*) AS films_available_for_rent
FROM inventory
WHERE inventory_id NOT IN (SELECT inventory_id FROM rental);

-- Films that have been rented
SELECT COUNT(DISTINCT inventory_id) AS films_rented
FROM rental;

-- Distinct Last name of actors
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;

-- All actors name where first name = Scarlett
SELECT * 
FROM actor
WHERE first_name = 'SCARLETT';

