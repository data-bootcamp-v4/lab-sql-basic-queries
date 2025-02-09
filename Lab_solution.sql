-- Retrieve all the data from the tables actor, film and customer.alter
SELECT * from actor;
SELECT * from film;
SELECT * FROM cuatomer;

-- Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table
SELECT title FROM film;
-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name from language as language;
-- 3.3 List of first names of all employees from the staff table
SELECT first_name from staff;

-- 4. Retrieve unique release years.
SELECT distinct (release_year) from film;

-- 5. Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(store_id) from store;
-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(staff_id) from staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(inventory_id) as films_available from inventory;
SELECT COUNT(rental_id) as films_rent from rental;
-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT DISTINCT(last_name) from actor;
-- 6.Retrieve the 10 longest films.
SELECT * from film
ORDER BY length desc
LIMIT 10;
-- 7.Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * from actor
WHERE first_name = "SCARLETT";
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * from film
WHERE title LIKE "%ARMAGEDDON%" AND length <100;
-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(film_id) FROM film
WHERE special_features LIKE "%Behind the scene%";