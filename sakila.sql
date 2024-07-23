







Use filtering techniques in order to:

7.1 Retrieve all actors with the first name "SCARLETT".
BONUS:

7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

Hint: use LIKE operator. More information here.
7.3 Determine the number of films that include Behind the Scenes content--

USE sakila;
SHOW tables
FROM sakila;

-- Retrieve all the data from the tables actor, film and customer --

SELECT * 
FROM actor, film, customer;

-- Titles of all films from the film table--
SELECT title
FROM film;
--List of languages used in films, with the column aliased as language from the language table--
SELECT name
FROM language;

-- List of first names of all employees from the staff table --

SELECT first_name
FROM staff;
-- Retrieve unique release years --
SELECT DISTINCT film.release_year
FROM film;

Counting records for database insights:

-- Determine the number of stores that the company has --
SELECT COUNT (store_id)
FROM store;

-- Determine the number of employees that the company has--
SELECT COUNT(staff_id)
FROM staff;
-- Determine how many films are available for rent and how many have been rented--
SELECT COUNT (inventory_id)
FROM inventory;
SELECT DISTINCT COUNT (rental.inventory_id)
FROM rental; 

-- Determine the number of distinct last names of the actors in the database --
SELECT DISTINCT last_name
FROM actor;

-- Retrieve the 10 longest films --
SELECT *
FROM film 
ORDER BY length DESC
LIMIT 10;

-- Retrieve all actors with the first name "SCARLETT"--

SELECT *
FROM actor
WHERE first_name = "SCARLETT";
--BONUS:--

-- Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.--

SELECT *
FROM film
WHERE title LIKE  "%ARMAGEDDON%" AND length >100 ;

7.3 Determine the number of films that include Behind the Scenes content--


SELECT COUNT(*) 
FROM film 
WHERE special_features LIKE '%Behind the Scenes%';
