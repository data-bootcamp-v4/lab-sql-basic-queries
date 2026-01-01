-- 1
SHOW TABLES FROM sakila;
-- 2
select * 
from sakila.actor;

select * 
from sakila.film;

select * 
from sakila.customer;
-- 3
select title
from sakila.film;

select name as language
from sakila.language;

select first_name
from sakila.staff;

-- 4
select distinct release_year
from sakila.film;

-- 5
select count(store_id) as n_store
from sakila.store;

select count(staff_id) as n_employees
from sakila.staff;

select count(film_id) as available_film
from sakila.film;

select count(distinct rental_id) as n_rentals
from sakila.rental;

select distinct(last_name)
from sakila.actor;

-- 6
select film_id, title, length
from sakila.film
order by length desc
limit 10;

-- 7 
select actor_id, first_name, last_name
from sakila.actor
where first_name = 'SCARLETT';

select title, length
from sakila.film
where title like '%ARMAGEDDON%' and length > 100;

select count(film_id)

