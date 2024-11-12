USE sakila;

-- Display all available tables in the Sakila database.
SHOW TABLES;
-- Retrieve all the data from the tables actor, film and customer.
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;
/*
Retrieve the following columns from their respective tables:

3.1 Titles of all films from the film table
3.2 List of languages used in films, with the column aliased as language from the language table
3.3 List of first names of all employees from the staff table
*/
SELECT title FROM sakila.film;
SELECT name as language FROM sakila.language;
SELECT first_name FROM sakila.staff;
-- Retrieve unique release years.
SELECT DISTINCT release_year FROM sakila.film;

/*
Counting records for database insights:

5.1 Determine the number of stores that the company has.
5.2 Determine the number of employees that the company has.
5.3 Determine how many films are available for rent and how many have been rented.
5.4 Determine the number of distinct last names of the actors in the database.
*/
SELECT COUNT(store_id) FROM sakila.store;
SELECT COUNT(staff_id) FROM sakila.staff;
-- SELECT * FROM sakila.rental;
SELECT COUNT(inventory_id) FROM sakila.inventory;
SELECT COUNT(DISTINCT inventory_id) FROM sakila.rental;
SELECT COUNT(DISTINCT last_name) from sakila.actor;

-- Retrieve the 10 longest films.
SELECT title, length 
FROM sakila.film
ORDER BY length DESC 
LIMIT 10;

/*
Use filtering techniques in order to:

7.1 Retrieve all actors with the first name "SCARLETT".
*/
SELECT * FROM sakila.actor WHERE first_name IN ("SCARLETT");
-- SELECT * FROM sakila.actor WHERE first_name = "SCARLETT";
/*
BONUS:

7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

Hint: use LIKE operator. More information here.
7.3 Determine the number of films that include Behind the Scenes content
*/

SELECT * 
FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%' AND length >= 100;

SELECT COUNT(*) 
FROM sakila.film
WHERE special_features IN ('Behind the Scenes', 'behind the scenes');