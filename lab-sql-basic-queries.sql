USE sakila;

-- 1. Display all available tables in the Sakila database.

SHOW TABLES IN sakila;

-- 2. Retrieve all the data from the tables actor, film and customer.

SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;

-- 3. Retrieve the following columns from their respective tables:

	-- 3.1 Titles of all films from the film table
    
SELECT Titles
FROM film;
    
	-- 3.2 List of languages used in films, with the column aliased as language from the language table
	
SELECT original_language_id as language, language_id as language_2
FROM film;   
    
    -- 3.3 List of first names of all employees from the staff table

SELECT first_name
FROM staff;

-- 4. Retrieve unique release years.

SELECT DISTINCT(release_year)
FROM film;

-- 5. Counting records for database insights:

	-- 5.1 Determine the number of stores that the company has.
    
    SELECT COUNT(store_id)
    FROM store;
    
    SELECT COUNT(*) as store_num
    FROM store;
    
	-- 5.2 Determine the number of employees that the company has.
    
    SELECT COUNT(staff_id)
    FROM staff;
    
	-- 5.3 Determine how many films are available for rent and how many have been rented.
    
    SELECT COUNT(*) FROM rental WHERE return_date IS NULL; -- rented
    
    SELECT COUNT(*) FROM rental WHERE return_date IS NOT NULL; -- available
    
	-- 5.4 Determine the number of distinct last names of the actors in the database.
    
    SELECT COUNT(distinct last_name)
    FROM actor;
    
-- 6. Retrieve the 10 longest films.

SELECT *
FROM film
ORDER BY length desc limit 10;

-- 7. Use filtering techniques in order to:

	-- 7.1 Retrieve all actors with the first name "SCARLETT".
    
    SELECT *
    FROM actor
    WHERE first_name = "SCARLETT";

