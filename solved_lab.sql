-- Challenge
-- Use the sakila database to do the following tasks:

-- 1/ Display all available tables in the Sakila database.
SHOW TABLES FROM sakila;

USE sakila;
SHOW TABLES;

-- 2/ Retrieve all the data from the tables actor, film and customer.
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

-- 3/ Retrieve the following columns from their respective tables:
	-- 3.1/ Titles of all films from the film table
	SELECT sfilm.title
	FROM sakila.film as sfilm;

	-- 3.2/ List of languages used in films, with the column aliased as language from the language table
	SELECT slang.name
	FROM sakila.language as slang;

	-- 3.3/ List of first names of all employees from the staff table
	SELECT sstaff.first_name
	FROM sakila.staff AS sstaff;

-- 4/ Retrieve unique release years.
SELECT DISTINCT sfilm.release_year
FROM sakila.film AS sfilm;

-- 5/ Counting records for database insights:
	-- 5.1/ Determine the number of stores that the company has.
	SELECT COUNT(sstore.store_id)
    FROM sakila.store AS sstore;
    
    -- 5.2/ Determine the number of employees that the company has.
    SELECT COUNT(sstaff.staff_id)
    FROM sakila.staff AS sstaff;
    
    -- 5.3/ Determine how many films are available for rent and how many have been rented.
    -- Total available films
	SELECT COUNT(*) AS total_available_films
	FROM inventory
	WHERE inventory_id NOT IN (SELECT inventory_id FROM rental WHERE return_date IS NULL);
    
	-- Total rented films
	SELECT COUNT(DISTINCT inventory_id) AS total_rented_films
	FROM rental;
    
    -- 5.4/ Determine the number of distinct last names of the actors in the database.
    SELECT COUNT(DISTINCT sactor.last_name)
    FROM sakila.actor AS sactor;
    
-- 6/ Retrieve the 10 longest films.
SELECT sfilm.title, sfilm.length
FROM sakila.film as sfilm
ORDER BY sfilm.length DESC
LIMIT 10;

-- 7/ Use filtering techniques in order to:
	-- 7.1/ Retrieve all actors with the first name "SCARLETT".
    SELECT sactor.first_name, sactor.last_name
	FROM sakila.actor AS sactor
	WHERE sactor.first_name LIKE "SCARLETT";
    
    -- BONUS
    -- 7.2/ Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
    SELECT sfilm.title, sfilm.length
    FROM sakila.film AS sfilm
    WHERE sfilm.title LIKE "%ARMAGEDDON%" AND sfilm.length > 100;
    
    -- 7.3/ Determine the number of films that include Behind the Scenes content
    SELECT COUNT(*)
    FROM sakila.film AS sfilm
    WHERE sfilm.special_features LIKE "%Behind the Scenes%";
    
