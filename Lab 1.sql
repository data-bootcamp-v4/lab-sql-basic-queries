use sakila;

show tables;


select  * from actor;


select * from film;


select * from customer;


select title from film;


select name from language as language ;

select first_name from staff;

select distinct release_year from film;


select distinct count(store_id) from store;

select distinct count(staff_id) from staff;


select distinct count(inventory_id) from rental;

select distinct count(last_name) from actor;

select title , length
from film
order by length desc
limit 10;


select first_name
from actor
where first_name like "%scarlet%";












