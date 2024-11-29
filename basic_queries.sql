USE sakila;
-- 1. Display all available tables in the Sakila database.
SHOW TABLES;

-- 2. Retrieve all the data from the tables actor, film and customer.
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * from sakila.CUSTOMER;

-- 3. Retrieve the following columns from their respective tables:
SELECT title from sakila.film;
SELECT name AS language FROM language;
SELECT first_name FROM sakila.staff;

-- 4. Retrieve unique release years
SELECT DISTINCT release_year FROM sakila.film;

-- 5. Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(*) AS number_of_stored FROM sakila.STORE;
-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(*) AS number_of_employees FROM sakila.STAFF;
-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*) AS availabe_films_for_rent FROM sakila.inventory;
SELECT COUNT(*) As available_films_for_rent FROM sakila.rental;
-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS distince_last_names FROM sakila.actor;

-- 6. Retrieve the 10 longest films.
SELECT title, length FROM sakila.film ORDER BY length DESC LIMIT 10;

-- 7 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM sakila.actor WHERE first_name = 'SCARLETT';

-- 8  Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM sakila.film WHERE sakila.title LIKE '%ARMAGEDDON%' AND length > 100;