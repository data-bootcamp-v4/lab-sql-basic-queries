-- =======================================
-- Use the database
-- =======================================

USE sakila; 

-- =======================================
-- 2. Retrieve all the data from the tables actor, film and customer
-- =======================================

-- Actor table selection. 
SELECT * 
FROM actor; 

-- Film table selection.
SELECT *
FROM film; 

-- Customer table selection.
SELECT *
FROM film; 

-- =======================================
-- 3. Retrieve the following columns from their respective tables:
-- =======================================

-- Titles of all films from the film table
SELECT title 
FROM film; 

-- List of languages used in films, with the column aliased as language from the language table
SELECT * 
FROM language; 

-- List of first names of all employees from the staff table
SELECT first_name
FROM staff;

-- =======================================
-- 4. Retrieve unique release years.
-- =======================================
SELECT DISTINCT release_year
FROM film; 
-- =======================================
-- 5. Counting records for database insights:
-- =======================================

-- Determine the number of stores that the company has.
SELECT store_id, COUNT(*) as number_of_stores
FROM store; 

-- Determine the number of employees that the company has.
SELECT COUNT(*) as number_of_staff
FROM staff;
 
-- Determine how many films are available for rent and how many have been rented.
SELECT SUM(f.film_id) AS total_films, SUM(r.return_date IS NULL) AS rented 
FROM film f 
LEFT JOIN inventory i
ON f.film_id = i.film_id
LEFT JOIN rental r 
ON i.inventory_id = r.inventory_id;

-- Determine the number of distinct last names of the actors in the database.
SELECT DISTINCT COUNT(a.last_name) AS total_number
FROM actor a;

SELECT COUNT(DISTINCT a.last_name) AS total_number
FROM actor a;

-- =======================================
-- 6. Retrieve the 10 longest films.
-- =======================================

SELECT title, length AS length_flim
FROM film
HAVING length_flim > 184; 
-- =======================================
-- 7. Use filtering techniques in order to:
-- =======================================

-- Retrieve all actors with the first name "SCARLETT". 
SELECT a.first_name, a.last_name 
FROM actor a 
HAVING first_name = "Scarlett"; 