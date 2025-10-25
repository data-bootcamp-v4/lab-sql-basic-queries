-- 1. Display all available tables in the Sakila database.

use sakila;

show tables;

-- 2. Retrieve all the data from the tables actor, film and customer.

select *
from actor;

select *
from film;

select *
from customer;

-- Retrieve the following columns from their respective tables:

select title
from film;

select name as "language"
from language;

select first_name
from staff;

-- 4. Retrieve unique release years.

select distinct(release_year)
from film;

-- 5. Counting records for database insights:
select count(store_id)
from store;

select count(staff_id)
from staff;

select count(inventory_id), count(rental_id)
from rental;

select count(distinct(last_name))
from actor;

-- 6. Retrieve the 10 longest films.

select length, title
from film
order by length desc
limit 10;

-- 7. Use filtering techniques in order to:

select first_name, last_name
from actor
where first_name = "SCARLETT";

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than

select title
from film
where title like "%ARMAGEDDON%" AND length > 100;

select special_features, title
from film
where special_features like "%Behind the Scenes%";