USE sakila;
-- 1. Display all available tables in the Sakila database.
SHOW tables;

-- 2. Retrieve all the data from the tables actor, film and customer.
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

-- 3.1 Titles of all films from the film table
SELECT title FROM sakila.film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name AS language FROM sakila.language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM sakila.staff;
 
 -- 4. Retrieve unique release years.
SELECT DISTINCT release_year FROM sakila.film;
 
-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(store_id) FROM sakila.store;

-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(staff_id) FROM sakila.staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT * FROM sakila.rental;
SELECT COUNT(inventory_id) FROM sakila.rental; -- how many films are available for rent
SELECT SUM(ISNULL(return_date)) FROM sakila.rental; -- how many films have not been returned
SELECT COUNT(inventory_id)-SUM(ISNULL(return_date)) FROM sakila.rental; -- how many films have been rented

-- 5.4  Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) FROM sakila.actor;

-- 6. Retrieve the 10 longest films.
SELECT title, length FROM sakila.film ORDER BY length DESC LIMIT 10;

-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT first_name, last_name FROM sakila.actor WHERE first_name = "SCARLETT";

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT title, length FROM sakila.film WHERE title LIKE '%ARMAGEDDON%' AND length>100;

-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(special_features) FROM sakila.film WHERE special_features LIKE '%Behind the Scenes%';

