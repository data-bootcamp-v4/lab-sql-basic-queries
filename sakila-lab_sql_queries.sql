-- 1. Display all available tables in the Sakila database
USE sakila;

show tables;
-- 2.  Retrieve all the tables actor, film and customer. 
select * from sakila.actor;
select * from sakila.film;
select * from sakila.customer;

-- 3. Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
select title from sakila.film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
select * from sakila.language;
select name as language from sakila.language;

-- 3.3 List of first names of all employees from the staff table
 select first_name from sakila.staff;
 
 -- 4. Retrieve unique release years.
  select distinct release_year from sakila.film;
  
  -- 5.Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(DISTINCT store_id) AS number_of_store
FROM sakila.store;

-- 5.2 Determine the number of employees that the company has.
select count(distinct staff_id) as number_of_employees from sakila.staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
select * from sakila.rental;
-- total films available for rent
SELECT COUNT(*) AS total_films
FROM film;
-- films rented that have been rented at least once
SELECT COUNT(DISTINCT inventory_id) AS rented_films
FROM rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.
select count(distinct last_name) from sakila.actor;

-- 6. Retrieve the 10 longest films. 
select film_id, title, length from sakila.film
ORDER BY length DESC
LIMIT 10;


-- 7.Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".

SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE first_name = 'SCARLETT';



-- BONUS:
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
-- Hint: use LIKE operator. More information here.
select *
from sakila.film
where title like '%ARMAGEDDON%' and length > 100 ;


-- 7.3 Determine the number of films that include Behind the Scenes content
select COUNT(*) AS num_films_with_behind_the_scenes
from sakila.film
where special_features like '%Behind%';
