-- 1
use sakila;
show tables;
-- 2
select *
from actor, film, customer;
-- 3
-- 3.1
select title
from film;
-- 3.2
select name as language
from language
;
-- 3.3
select first_name
from staff;
-- 4
select distinct release_year
from film;
-- 5 
-- 5.1 Determine the number of stores that the company has.
select count(store_id)
from store;

-- 5.2 Determine the number of employees that the company has.
select count(staff_id)
from staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.

    
select count(distinct(inventory_id)) as available_films, 
		count(distinct(rental_id)) as rented_times
from rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.
select count(distinct(last_name)) as n_last_names
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

select distinct count(title) as number_behind
from film
where special_features like '%Behind the Scenes%';
