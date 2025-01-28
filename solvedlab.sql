use sakila;
show tables;
select * from actor;
select * from film;
select * from customer;
select title
from film;

select name as language
from language;

select first_name
from staff;

select distinct release_year
from film;

select count(*) as number_of_stores
from store;

select count(*) as employees 
from staff;

select count(distinct inventory_id) 
from inventory;
select count( distinct rental_id)
from rental;

select count( distinct last_name) 
from actor;

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;