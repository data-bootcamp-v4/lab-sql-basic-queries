-- ------------------------------------------------------------------------------------
-- lab-sql-basic-queries
-- ------------------------------------------------------------------------------------
USE sakila;

-- 1. Display all available tables in the Sakila database.
SHOW FULL TABLES;


-- ------------------------------------------------------------------------------------
-- 2. Retrieve all the data from the tables 'actor', 'film' and 'customer'
-- Table actor
SELECT * FROM actor;

-- Table film
SELECT * FROM film;

-- Table customer
SELECT * FROM customer;


-- ------------------------------------------------------------------------------------
-- 3.Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the 'film' table
SELECT 
	title AS titles_of_all_films
FROM film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT 
	name AS language
FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT 
	first_name AS first_names_employees
FROM staff;


-- ------------------------------------------------------------------------------------
-- 4. Retrieve unique release years
SELECT DISTINCT
	release_year 
FROM film;


-- ------------------------------------------------------------------------------------
-- 5.Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
SELECT
	COUNT(store_id) AS total_stores
FROM store;

-- 5.2 Determine the number of employees that the company has.
SELECT
	COUNT(*) AS total_staff
FROM staff;


-- 5.3 Determine how many films are available for rent and how many have been rented.
-- Total films available for rent
SELECT
	COUNT(*) AS total_films_available
FROM inventory;

-- Total films that have been rented at least once
SELECT
	COUNT(DISTINCT inventory_id) AS total_films_rented
FROM rental;


-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT 
	COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;


-- ------------------------------------------------------------------------------------
-- 6. Retrieve the 10 longest films.
SELECT 
	title,
    length
FROM film
order by length DESC
limit 10;


-- ------------------------------------------------------------------------------------
-- 7.Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT *
FROM actor
WHERE first_name = "SCARLETT";

-- BONUS:
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
-- Hint: use LIKE operator
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT 
	COUNT(*) AS films_with_behind_scenes
FROM film
WHERE find_in_set("Behind the Scenes", special_features)
