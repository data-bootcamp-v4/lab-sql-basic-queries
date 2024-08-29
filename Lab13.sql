-- 1. Display all available tables in the Sakila database.
-- 2. Retrieve all the data from the tables actor, film and customer.
SELECT 
    *
FROM
    sakila.actor;
SELECT 
    *
FROM
    sakila.film;
SELECT 
    *
FROM
    sakila.customer;

-- 3. Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
SELECT 
    title
FROM
    sakila.film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT 
    *
FROM
    `sakila`.`language`;
    
-- Retrieve unique release years.
SELECT 
    release_year
FROM
    sakila.film;
    
-- Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.
SELECT 
    count(store_id)
FROM
    sakila.store;

-- 5.2 Determine the number of employees that the company has.

SELECT 
    count(staff_id)
FROM
    sakila.staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.

SELECT 
    COUNT(film_id)
FROM
    sakila.inventory
    
  --   5.4 Determine the number of distinct last names of the actors in the database.
  
SELECT 
    count(distinct(last_name))
FROM
    sakila.actor;
    
 --    Retrieve the 10 longest films.
 
SELECT 
    title, length
FROM
    film
ORDER BY length DESC
LIMIT 10;

-- Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".

SELECT 
    *
FROM
    sakila.actor
    Where first_name = "SCARLETT";