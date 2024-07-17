use Sakila;

-- 1 Display all available tables in the Sakila database.

Show Databases;

-- 2 Retrieve all the data from the tables actor, film and customer.


-- 3 Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
Select title FROM film;
-- 3.2 List of languages used in films, with the column
SELECT name  As language 
FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;

-- 4 Retrieve unique release years.
Select Distinct release_year FROM film;
-- 5 Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
select count(distinct store_id) FROM store;
-- 5.2 Determine the number of employees that the company has.
Select count(Distinct staff_id) FROM staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.
Select count(*) From film;
Select count(*) From rental;
-- 5.4 Determine the number of distinct last names of the actors in the database.
Select count( distinct last_name) 
from actor;

-- 6  Retrieve the 10 longest films.
Select title from film
order by length DESC
limit 10;

-- Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
Select * From actor
where first_name = 'SCARLETT';
--  7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * from film
WHERE title like 'ARMAGEDDONS' AND length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content
Select COUNT(*) FROM film
where special_feature like '%Behind the scenes%';
