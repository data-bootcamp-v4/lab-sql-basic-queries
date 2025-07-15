USE sakila;
-- 1. 
show tables;
-- 2. 
select * from actor;
select * from film;
select * from customer;

-- 3. 
select title from film;
-- select original_language from flim;
select first_name from staff;

-- 4. 
select distinct release_year from film;

-- 5.
select count(*) store_id from store;
select count(*) staff_id from staff;
select count(*) inventory_id from inventory; -- 4581
select count(*) rental_id from rental; -- 16044
select distinct count(*) last_name from actor; -- 200

-- 6. 
select title, length
from film
order by length desc
limit 10;

-- 7. 
select last_name from actor
where first_name = 'SCARLETT';

-- bonus:
select * from film
where title like "%ARMAGEDDON%"
order by length > 100;

select count(*)
from film
where special_features = "Behind the Scenes";



