use sakila;

-- 1. Display all available tables in the Sakila database.
show tables;

-- 2. Retrieve all the data from the tables actor, film and customer.

select * from actor, film, customer;

-- Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table

select title from sakila.film; 

-- 3.2 List of languages used in films, with the column aliased as language from the language table

select language_id, name as 'Language' 
from sakila.language 
WHERE name IS NOT NULL;

-- 3.3 List of first names of all employees from the staff table 
select first_name from staff;

-- 4. Retrieve unique release years.
select distinct release_year from film;

-- 5 Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.

select count(store_id)
from store;

-- 5.2 Determine the number of employees that the company has.

select count(staff_id)
from staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.

select count(rental_date) as rented, 
count(return_date) as available 
from rental
WHERE return_date < last_update;

-- 5.4 Determine the number of distinct last names of the actors in the database.

select count(distinct(last_name)) as 'Count of Last Names' from actor;

-- 6. Retrieve the 10 longest films.

select title, length from film
order by length desc
limit 10;

-- Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".
select first_name from actor
where first_name in ('Scarlett');

-- (BONUS) 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
Select * from film where length > 100 AND title Like '%ARMAGEDDON%';

-- (BONUS) 7.3 Determine the number of films that include Behind the Scenes content
Select count(special_features) as 'Special' 
from film 
where special_features Like '%Behind the Scenes%' ;