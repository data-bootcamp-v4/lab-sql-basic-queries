 
-- Use the sakila database to do the following tasks:
use sakila;

-- Display all available tables in the Sakila database.
show tables;
-- Retrieve all the data from the tables actor, film and customer.
select * from actor;
select * from film;
select * from customer;
-- Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
select title from film;
-- 3.2 List of languages used in films, with the column aliased as language from the language table
select name from language;
-- 3.3 List of first names of all employees from the staff table
-- Retrieve unique release years.
select first_name from staff;
-- Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.
select count(*)from store as number_store;
-- 5.2 Determine the number of employees that the company has.
select count(*) as number_employees from staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.
select count(*) as films_available_for_rent from inventory;
select count(distinct film_id) as unique_available_for_rent from inventory;
select count(*) as films_rented from rental;
-- 5.4 Determine the number of distinct last names of the actors in the database.
select distinct last_name from actor;
-- Retrieve the 10 longest films.
select title 
,length
 
from film 
order by length desc 
limit 10;
-- Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".
-- BONUS:
select * from actor where first_name like '%SCARLETT';


-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

select * from film where title like '%ARMAGEDDON' and length > 100;


-- Hint: use LIKE operator. More information here.
-- 7.3 Determine the number of films that include Behind the Scenes content
select count(distinct film_id) from film where special_features like '%Behind the Scenes';
