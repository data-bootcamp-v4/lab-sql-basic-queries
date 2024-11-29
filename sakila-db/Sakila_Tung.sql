

## Challenge
-- Use the sakila database to do the following tasks:

-- 1. Display all available tables in the Sakila database.
SHOW tables;


-- 2. Retrieve all the data from the tables `actor`, `film` and `customer`.
SELECT *
FROM sakila.actor;

SELECT *
FROM sakila.film;

SELECT * 
FROM sakila.customer;


-- 3. Retrieve the following columns from their respective tables:
	-- - 3.1 Titles of all films from the `film` table
	-- - 3.2 List of languages used in films, with the column aliased as `language` from the `language` table
	-- - 3.3 List of first names of all employees from the `staff` table
SELECT sakila.film.title
FROM sakila.film;

SELECT sakila.language.name AS language
FROM sakila.language;
    
SELECT sakila.staff.first_name
FROM sakila.staff;

-- 4. Retrieve unique release years.
SELECT distinct sakila.film.release_year
FROM sakila.film;


/*
5. Counting records for database insights:
	- 5.1 Determine the number of stores that the company has.
	- 5.2 Determine the number of employees that the company has.
	- 5.3 Determine how many films are available for rent and how many have been rented.
	- 5.4 Determine the number of distinct last names of the actors in the database.
*/
SELECT count(sakila.store.store_id) AS Number_of_Stores
FROM sakila.store;

SELECT COUNT(sakila.staff.staff_id)
FROM sakila.staff;

SELECT COUNT(sakila.inventory.inventory_id) AS total_films_for_rent
FROM sakila.inventory;

SELECT COUNT(DISTINCT sakila.rental.inventory_id) AS number_of_rented_films
FROM sakila.rental;

SELECT COUNT(DISTINCT sakila.actor.last_name) AS number_of_unique_names
FROM sakila.actor;

-- 6. Retrieve the 10 longest films.
SELECT sakila.film.title, sakila.film.length
FROM sakila.film
ORDER BY length DESC
LIMIT 10;


/* 7.  Use filtering techniques in order to:
	- 7.1 Retrieve all actors with the first name "SCARLETT".

	BONUS: 
	- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. 
	
		- *Hint: use `LIKE` operator. [More information here.](https://www.w3schools.com/sql/sql_like.asp)*
	- 7.3 Determine the number of films that include Behind the Scenes content
*/
SELECT sakila.actor.last_name, sakila.actor.first_name AS Scarletts
FROM sakila.actor
WHERE first_name = "Scarlett";


SELECT sakila.film.title
FROM sakila.film
WHERE sakila.film.length >= 100 AND sakila.film.title LIKE "%ARMAGEDDON%";


SELECT sakila.film.title AS "Films with BTS"
FROM sakila.film
WHERE sakila.film.special_features LIKE "%Behind%";

SELECT COUNT(sakila.film.special_features LIKE "%Behind%") AS "Number of Films with BTS in total"
FROM sakila.film
WHERE sakila.film.special_features LIKE "%Behind%";
