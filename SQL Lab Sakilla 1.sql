-- Display all available tables in the Sakila database.
show databases;
show tables;

-- Retrieve all the data from the tables actor, film and customer.

select * 
from sakila.actor;

select * 
from sakila.film;

select * 
from sakila.customer;

-- Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
-- 3.2 List of languages used in films, with the column aliased as language from the language table
-- 3.3 List of first names of all employees from the staff table
-- Retrieve unique release years.

select title 
from sakila.film;

select name
from sakila.language;

select first_name
from sakila.staff;

select distinct release_year
from sakila.film;

-- Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
-- 5.2 Determine the number of employees that the company has.
-- 5.3 Determine how many films are available for rent and how many have been rented.
-- 5.4 Determine the number of distinct last names of the actors in the database.
-- Retrieve the 10 longest films.

select count(*) from store;
select count(*) from staff;
select count(*) from rental;
select count(*) from inventory;
select count(distinct last_name)
from sakila.actor;

select length from film
order by length desc
limit 10;

-- Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
select *
from actor
where first_name like 'scarlett';

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. Hint: use LIKE operator. More information here.

select *
from film
where title like '%armageddon%'
and length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content

select *
from film
where special_features like '%Behind The Scenes%';



