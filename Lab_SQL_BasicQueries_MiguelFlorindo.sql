use sakila;

-- 1.

show tables;

-- 2.

select * from actor;
select * from film;
select * from customer;

-- 3.1

select title from film;

-- 3.2

select name as language from language;

-- 3.3

select first_name from staff;

-- 4.

select distinct release_year from film;

-- 5.1

select count(*) as number_of_stores from store;

-- 5.2

select count(*) as number_of_employees from staff;

-- 5.3

select count(*) available_films from inventory;

select count(distinct inventory_id) as rented_films from rental;

-- 5.4

select count(distinct last_name) as distinct_actor_last_name from actor;


-- 6.

select title, length
from film
order by length desc
limit 10;

-- 7.1

select *
from actor
where first_name = "scarlett"
