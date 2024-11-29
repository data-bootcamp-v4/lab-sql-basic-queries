use sakila;

-- Display all available tables in the Sakila database.
show tables;

-- Retrieve all the data from the tables actor, film and customer.

select * from actor, film, customer;

-- Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table

select title from sakila.film; 

-- 3.2 List of languages used in films, with the column aliased as language from the language table

select original_language_id as language, language_id as language_2 from film;

-- 3.3 List of first names of all employees from the staff table

select first_name from staff;

-- Retrieve unique release years.

select distinct(release_year) from film;

-- Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.

select count(address_id)
from store;

-- 5.2 Determine the number of employees that the company has.

select count(staff_id)
from staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.

select count(rental_date) as rented, count(return_date) as available from rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.

select count(distinct(last_name)) as 'Count of Last Names' from actor;

-- Retrieve the 10 longest films.

select title, length from film
order by length desc
limit 10;

-- Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".

select first_name from actor
where first_name in ('Scarlett');
