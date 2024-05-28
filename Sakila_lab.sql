USE sakila;
-- 1 : 
SHOW FULL TABLES;

-- 2 :
select * from sakila.actor;
select * from sakila.film;
select * from sakila.customer;

-- 3 : 
select title from sakila.film;
select DISTINCT (lg.name) from sakila.language as lg;
select first_name from sakila.staff;

-- 4 : 
select distinct(release_year) from sakila.film;

-- 5 : 
select count(distinct store_id) from sakila.store;
select count(distinct staff_id) from sakila.staff;
SELECT count(title) FROM sakila.film;
SELECT count(title) FROM sakila.film WHERE rental_duration > 0;
SELECT count(distinct last_name) From sakila.actor;

-- 6 : 
SELECT title,
length
from sakila.film 
order by length desc limit 10;

-- 7 : 
select actor_id, first_name, last_name from sakila.actor where first_name like '%SCARLETT%';
select title, length from sakila.film where title like'%ARMAGEDDON%' and length > 100;
select title from sakila.film where title like '%Behind% %the% %Scenes%';

 
