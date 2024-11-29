 -- Display all available tables in the Sakila database.
show tables;

-- Retrieve all the data from the tables actor, film and customer.
select * 
from actor;

select * 
from film;

select * 
from customer;

-- Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table
select film_id, title 
from film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
select language_id, name as language
from language;

-- 3.3 List of first names of all employees from the staff table
select first_name 
from staff;

-- Retrieve unique release years.
select distinct release_year 
from film;

-- Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.
select count(store_id) 
from store;

-- 5.2 Determine the number of employees that the company has.
select count(staff_id) as total_staff
from staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT 
    (SELECT COUNT(film_id) FROM film) AS total_films_available,
    (SELECT COUNT(DISTINCT inventory.film_id) 
     FROM rental
     JOIN inventory ON rental.inventory_id = inventory.inventory_id) AS films_rented;
     
-- 5.4 Determine the number of distinct last names of the actors in the database.
select count(distinct last_name)
from actor;

-- Retrieve the 10 longest films.
select title, length
from film
order by length desc
limit 10;

-- Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".
-- BONUS:
select * 
from actor
where first_name = 'scarlett';

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
select * 
from film
where title like "%armageddon%" and length > 100;

-- Hint: use LIKE operator. More information here.
-- 7.3 Determine the number of films that include Behind the Scenes content
select count(film_id)
from film
where special_features like 'Behind the Scenes';
