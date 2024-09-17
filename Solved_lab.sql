-- 1 Use the sakila database and show all tables
use sakila;
show tables;
-- 2 Retrieve all data from actor, film, and customer tables
select *
from actor, film, customer;
-- 3
-- 3.1 Retrieve titles of all films
select title
from film;
-- 3.2 Retrieve languages used in films with alias 'language'
select name as language
from language
;
-- 3.3 Retrieve first names of all employees
select first_name
from staff;
-- 4 Retrieve unique release years
select distinct release_year
from film;
-- 5 
-- 5.1 Determine the number of stores that the company has.
select count(distinct store_id)
from store;

-- 5.2 Determine the number of employees that the company has.
select count(distinct staff_id)
from staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.
select COUNT(*) as available_films from inventory where inventory_id not in (select inventory_id from rental);
select COUNT(*) as rented_times from rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.
select count(distinct last_name) as n_last_names
from actor;
-- 6 Retrieve the 10 longest films.
select title, length
from film
order by length desc
limit 10;
-- 7. Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
select *
from actor
where first_name = 'SCARLETT';

## BONUS:
##7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
##Hint: use LIKE operator. More information here.
select *
from film
where title like '%ARMAGEDDON%' and length > 100;

##7.3 Determine the number of films that include Behind the Scenes content

select count(title) as number_behind
from film
where special_features like '%Behind the Scenes%';
