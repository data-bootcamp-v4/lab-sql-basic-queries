use sakila
-- 1. Display all available tables in the Sakila database.
USE sakila;
show tables;

-- 2. Retrieve all the data from the tables `actor`, `film` and `customer`.
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

-- 3. Retrieve the following columns from their respective tables:
-- 	- 3.1 Titles of all films from the `film` table
SELECT title FROM sakila.film;

-- 	- 3.2 List of languages used in films, with the column aliased as `language` from the `language` table
SELECT DISTINCT name FROM sakila.language;

-- 	- 3.3 List of first names of all employees from the `staff` table
SELECT first_name From sakila.staff;

-- 4. Retrieve unique release years.
SELECT DISTINCT release_year FROM sakila.film;

-- 5. Counting records for database insights:
-- 	- 5.1 Determine the number of stores that the company has.
SELECT COUNT(store_id) FROM sakila.store;

-- 	- 5.2 Determine the number of employees that the company has.
SELECT COUNT(staff_id) FROM sakila.staff;

-- 	- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT
  (SELECT COUNT(*) FROM sakila.inventory) -
  (SELECT COUNT(*) FROM sakila.rental WHERE return_date IS NULL)
  AS films_available_for_rent;
SELECT SUM(CASE WHEN return_date is null) FROM sakila.rental;

-- 	- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) FROM sakila.actor;

-- 6. Retrieve the 10 longest films.
SELECT title, length FROM sakila.film
    ORDER BY length DESC
    LIMIT 10;

-- 7.  Use filtering techniques in order to:
-- 	- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM sakila.actor
	WHERE first_name = "SCARLETT";

-- 	BONUS: 
-- 	- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. 
	
-- 		- *Hint: use `LIKE` operator. [More information here.](https://www.w3schools.com/sql/sql_like.asp)*
-- 	- 7.3 Determine the number of films that include Behind the Scenes content