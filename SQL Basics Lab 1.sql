-- 1. Display all available tables in the Sakila database.--
SHOW TABLES IN sakila;

-- 2. Retrieve all the data from the tables actor, film and customer.
Select * from (actor, film, customer)

-- 3. Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
SELECT title FROM film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
select * from language;

-- 3.3 List of first names of all employees from the staff table
select first_name from staff

-- 4. Retrieve unique release years.
SELECT DISTINCT release_year FROM film

-- 5. Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.
select distinct store_id from store

-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(staff_id)
FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(DISTINCT film_id) AS available_films
FROM inventory

-- and how many have been rented.

SELECT COUNT(DISTINCT film_id) AS rented_films
FROM inventory
WHERE inventory_id NOT IN (
    SELECT inventory_id
    FROM rental
    WHERE return_date IS NOT NULL
);


-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT count(distinct last_name)
FROM actor


-- 6. Retrieve the 10 longest films.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7. Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * 
FROM actor 
WHERE first_name = 'SCARLETT';

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * 
FROM film 
WHERE title like '%ARMAGEDDON%'
AND length > 100;

Hint: use LIKE operator. More information here.
7.3 Determine the number of films that include Behind the Scenes content