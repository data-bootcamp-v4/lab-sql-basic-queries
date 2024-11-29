select *
from actor;

select *
from film;

select *
from customer;

select title
from film;

select name as language
from language;

select first_name
from staff;

select distinct release_year
from film;

select count(store_id)
from store;

select count(staff_id)
from staff;

select *
from rental;

select count(distinct last_name)
from actor;

select *
from film
order by length desc
limit 10;

select * 
from actor
where first_name in ('Scarlett')


