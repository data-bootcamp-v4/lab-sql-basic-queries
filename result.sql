-- 1)
USE sakila;
SHOW TABLES;

-- 2)
select * from actor;
select * from customer;
select * from film;

-- 3)
select title from film;
select * from language;
select * from staff;

-- 4)
select distinct(release_year)
from film;
-- there is only one year

-- 5)
select count(distinct(store_id)) as number_of_store
from store;
-- two unique store_id 
select count(distinct(staff_id)) from staff;
-- two unique staff_if
select count(distinct(last_name)) from actor;
-- 121 distinct last name

-- 6)
select * from film
order by length desc
limit 10;

-- 7)
select * from actor
where first_name = 'SCARLETT';

select * from film
where title Like '%ARMAGEDDON%' and length > 100;

select count(*) from film
where special_features like '%Behind the Scenes%'
-- 538 movies;




