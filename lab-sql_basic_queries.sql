-- #1 - display all tables 
use sakila;
show tables;
-- retrieve all data from actor, film and customer
select * 
from actor, film, customer;
-- 3.1
select title
from film;
-- 3.2 
select name as language
from language;
-- 3.3 
select *
from staff; 
-- 4
select distinct release_year 
from film; 
-- 5.1
select count(store_id)
from store;
-- 5.2
select count(staff_id)
from staff;
-- 5.3 
-- rented:
select count(rental_id) from rental;
-- not rented: 
SELECT COUNT(inventory_id) FROM inventory;
-- how many films are available for rent:
SELECT 
    (SELECT COUNT(inventory_id) FROM rental) -
    (SELECT COUNT(inventory_id) FROM inventory) AS films_available_for_rent;
-- 5.4 
select count(distinct last_name)
from actor;
-- 6: 10 longest fimls:
select film_id, title, length from film 
order by length DESC; 
-- 7.1 all actors with fn scarlett: 
select actor_id, first_name from actor
where first_name = 'SCARLETT'; 
-- bonus 
-- 7.2 retrieve all mmovies that have amrageddon in title and have duration longer than 100m 
select film_id, title from film
where title like '%ARMAGEDDON%'; 
-- 7.3 determine number of film 
select title, special_features from film
where special_features like '%Behind the Scenes%'; 


