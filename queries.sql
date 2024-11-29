use sakila;
show tables;

select *
from actor, film, customer;

select title, name, first_name
from film, language as language, staff;

select distinct release_year
from film;

select count(store_id)
from store;

select count(staff_id)
from staff;

select count(film_id), count(rental_id)
from film,rental;

select distinct last_name
from actor;

select film_id
from film
order by length desc
limit 10;

select first_name
from actor
where first_name='SCARLETT';