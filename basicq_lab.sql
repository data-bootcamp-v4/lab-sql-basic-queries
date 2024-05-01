use sakila;
show tables;

select * from actor;
select * from film;
select * from customer;

select title from film;
select name from language as language;
select first_name from staff;

select distinct release_year from film;

select count(store_id) from store;
select count(staff_id) from staff;
select count(rental_id) from rental;
select count(inventory_id) from inventory;
select distinct count(last_name) from actor;

# 6.
select title, length from film
order by length desc
limit 10;

# 7.
select * from actor
where first_name = "SCARLETT";

select * from film
where title like "%armageddon%" and length > 100;

select count(film_id) from film
where special_features like "%Behind the Scenes%"




