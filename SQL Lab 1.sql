Select *
FROM actor;

Select *
FROM film;

Select *
FROM customer;

-- 3. Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table
-- 3.2 List of languages used in films, with the column aliased as language from the language table
-- 3.3 List of first names of all employees from the staff table

SELECT title
FROM film;

SELECT name AS `Language`
FROM language;

SELECT first_name
FROM staff;

-- 4. Retrieve unique release years

SELECT DISTINCT(release_year)
from film;

-- 5.Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.
-- 5.2 Determine the number of employees that the company has.
-- 5.3 Determine how many films are available for rent and how many have been rented.
-- 5.4 Determine the number of distinct last names of the actors in the database.

SELECT COUNT(store_id)
FROM store;

SELECT COUNT(staff_id)
FROM staff;

-- 5.3 INCOMPLETE
SELECT DISTINCT(COUNT(inventory_id))
FROM rental;

SELECT COUNT(DISTINCT(last_name))
FROM actor;

-- 6. Retrieve the 10 longest films.
SELECT *
FROM film
ORDER BY length DESC
LIMIT 10; 

-- 7. Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT"

SELECT first_name
FROM actor
WHERE first_name = 'SCARLETT';