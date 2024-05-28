USE sakila;
-- 1 Display all available tables in the Sakila database.

-- 2 Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film; 
SELECT * FROM customer; 

-- 3 Retrieve the following columns from their respective tables:
-- Titles of all films from the film table 
SELECT title FROM film; 

-- List of languages used in films, with the column aliased as language from the language table
SELECT name as language FROM language  

--  List of first names of all employees from the staff table
SELECT first_name FROM staff;

-- 4 Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

-- 5 Counting records for database insights:
-- Determine the number of stores that the company has.
SELECT COUNT(store_id) FROM sakila.store; 

-- Determine the number of employees that the company has.
SELECT COUNT(staff_id) FROM sakila.staff;

-- Determine how many films are available for rent and how many have been rented.
SELECT COUNT(film_id) FROM sakila.film;

-- Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS distinct_last_name FROM actor;

-- 6 Retrieve the 10 longest films.
SELECT length FROM film
ORDER BY length DESC
LIMIT 10;

-- 7 Use filtering techniques in order to retrieve all actors with the first name "SCARLETT".
SELECT first_name FROM actor
WHERE first_name = "SCARLETT"; 

-- Bonus
-- Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;  
  
  -- Determine the number of films that include Behind the Scenes content
  SELECT COUNT(DISTINCT special_features) AS films_that_include_Behind_the_Scenes_content FROM film;


