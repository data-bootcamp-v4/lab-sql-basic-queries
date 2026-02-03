-- sql basic queries lab

use sakila;

-- 1. display all tables
show tables;

-- 2. retrieve all data from actor, film and customer tables
select * from actor;
select * from film;
select * from customer;

-- 3.1 titles of all films
select title from film;

-- 3.2 list of languages
select name as language from language;

-- 3.3 first names of employees
select first_name from staff;

-- 4. unique release years
select distinct release_year from film;

-- 5.1 number of stores
select count(*) as num_stores from store;

-- 5.2 number of employees
select count(*) as num_employees from staff;

-- 5.3 films available for rent and films rented
select count(*) as films_available from inventory;
select count(distinct inventory_id) as films_rented from rental;

-- 5.4 distinct last names of actors
select count(distinct last_name) as unique_last_names from actor;

-- 6. 10 longest films
select title,length from film
order by length desc
limit 10;

-- 7.1 actors with first name scarlett
select * from actor
where first_name='SCARLETT';

-- bonus 7.2 movies with armageddon in title and longer than 100 mins
select title,length from film
where title like '%ARMAGEDDON%' and length>100;

-- bonus 7.3 films with behind the scenes content
select count(*) as films_with_bts
from film
where special_features like '%Behind the Scenes%';