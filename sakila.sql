USE sakila;

-- 1. Display all available tables in the Sakila database.
SHOW TABLES;

-- 2. Retrieve all the data from the tables actor, film and customer.
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;
-- 3. Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
SELECT film.title FROM sakila.film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT l.name AS language
FROM sakila.language AS l
JOIN sakila.film AS f
ON f.language_id = l.language_id;

-- 3.3 List of first names of all employees from the staff table
SELECT s.first_name, s.last_name FROM sakila.staff AS s;

-- 4. Retrieve unique release years.
SELECT DISTINCT f.release_year FROM sakila.film AS f;

-- 5. Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(st.store_id) FROM sakila.store AS st;

-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(s.staff_id) FROM sakila.staff AS s;
-- 5.3 Determine how many films are available for rent and how many have been rented.
-- check table and column information to see which columns I need
SELECT * FROM sakila.rental;


SELECT COUNT(r.inventory_id) 
FROM sakila.rental AS r
WHERE r.return_date IS NULL;

(SELECT COUNT(r.inventory_id) FROM sakila.rental AS r
WHERE r.return_date IS NOT NULL);

-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT DISTINCT a.last_name FROM sakila.actor AS a;

-- 6. Retrieve the 10 longest films.
SELECT f.title, f.length FROM sakila.film AS f
ORDER BY f.length DESC
LIMIT 10;

-- 7. Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT a.first_name, a.last_name 
FROM sakila.actor AS a
WHERE a.first_name = "SCARLETT";

-- BONUS:
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
-- Hint: use LIKE operator.
-- checking table to see how values are displayed
SELECT * FROM sakila.film;

SELECT * FROM sakila.film AS f
WHERE f.length >= 100 AND f.title LIKE '%ARMAGEDDON%'; 

-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT count(film_id) FROM sakila.film AS f
WHERE f.special_features LIKE '%Behind the Scenes%';



