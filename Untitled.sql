-- Use the sakila database to do the following tasks:
-- 
use sakila;
select * from sakila;

-- Display all available tables in the Sakila database.
-- 
SHOW TABLES;

-- Retrieve all the data from the tables actor, film and customer.
-- 
select* from actor, film, customer;

select* from actor;
select* from film;
select* from customer;
-- Retrieve the following columns from their respective tables:
-- 
-- 3.1 Titles of all films from the film table
-- 3.2 List of languages used in films, with the column aliased as language from the language table
-- 3.3 List of first names of all employees from the staff table
select title from film;
select name from language;
select first_name from staff;
select * from staff;


-- Retrieve unique release years.
-- 

select distinct release_year from film;
select * from film;
-- Counting records for database insights:
-- 
-- 5.1 Determine the number of stores that the company has.
-- 5.2 Determine the number of employees that the company has.
-- 5.3 Determine how many films are available for rent and how many have been rented.
-- 5.4 Determine the number of distinct last names of the actors in the database.
select * from sakila.store;
select sum(address_id) from store;


-- Retrieve the 10 longest films.
-- 
select * from film;
select *
from film 
order by length
limit 10;

-- Use filtering techniques in order to:
-- 
-- 7.1 Retrieve all actors with the first name "SCARLETT".
select * from actor where first_name = "SCARLETT";
