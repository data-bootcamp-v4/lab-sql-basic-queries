use sakila;

-- Display all available tables in the Sakila database.

SHOW Tables;

-- Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

/*Retrieve the following columns from their respective tables:

3.1 Titles of all films from the film table
3.2 List of languages used in films, with the column aliased as language from the language table
3.3 List of first names of all employees from the staff table*/
SELECT title FROM film;

SELECT name AS language FROM language;

SELECT first_name FROM staff;

-- Retrieve unique release years.

SELECT DISTINCT release_year FROM film;

/*Counting records for database insights:

5.1 Determine the number of stores that the company has.
5.2 Determine the number of employees that the company has.
5.3 Determine how many films are available for rent and how many have been rented.
5.4 Determine the number of distinct last names of the actors in the database.*/

SELECT COUNT(store_id) AS store_count FROM store;

SELECT COUNT(staff_id) AS staff_count FROM staff;

SELECT COUNT(DISTINCT film_id) AS films_available_for_rent FROM inventory;
SELECT COUNT(DISTINCT inventory_id) AS films_rented FROM rental;

SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM actor;

-- Retrieve the 10 longest films.
SELECT title, length from film order by length desc limit 10;


-- Use filtering techniques in order to: Retrieve all actors with the first name "SCARLETT".
SELECT * FROM ACTOR WHERE first_name = 'SCARLETT';

-- Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
-- Hint: use LIKE operator.
SELECT * FROM film 
WHERE title LIKE '%ARMAGEDDON%' 
AND length > 100;