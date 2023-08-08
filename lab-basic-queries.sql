USE sakila;

-- 1 
SHOW tables;

-- 2. 
SELECT * 
FROM actor, film, customer; 

-- 3 
-- 3.1 Titles of all films from the film table
SELECT title
FROM film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT l.name AS language
FROM film f
JOIN language l ON f.language_id = l.language_id;

-- 3.3 List of first names of all employees from the staff table

SELECT first_name
FROM staff;

-- 4. Retrieve unique release years.

SELECT DISTINCT release_year 
FROM film;

-- 5. 
-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(DISTINCT store_id)
FROM staff;


-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(DISTINCT staff_id) 
FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.

SELECT * FROM rental WHERE rental_date IS NOT NULL AND return_date IS NULL;

-- 5.4 Determine the number of distinct last names of the actors in the database.

SELECT COUNT(DISTINCT last_name)
FROM actor;

-- Retrieve the 10 longest films.

SELECT title from film
ORDER BY length DESC limit 10;

-- Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * 
FROM actor
WHERE first_name = "SCARLETT";

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. 
-- Hint: use LIKE operator. More information here.
SELECT * 
FROM film
WHERE title LIKE  "%ARMAGEDDON%" and length > 100;


-- 7.3 Determine the number of films that include Behind the Scenes content

SELECT COUNT(*) FROM film WHERE special_features LIKE '%Behind the Scenes%';

