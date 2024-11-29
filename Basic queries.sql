use sakila;
## 1
show tables from sakila;

## 2
select * from actor;
select * from film;
select * from customer;

## 3
select title from film;
select name as language from language;
select first_name from staff;

## 4
select distinct release_year from film;

## 5
select count(distinct store_id) as store_qty from store;
select count(distinct staff_id) as staff_qty from staff;
select count(*) from inventory;

select count(distinct inv.inventory_id) as available_rent_movie
from inventory inv
left join rental re
on inv.inventory_id = re.inventory_id
where re.rental_date IS NULL;

select count(distinct last_name) as distinct_last_name from actor;

## 6
select title, length
from film
order by length DESC
LIMIT 10;

## 7
select *
from actor
where first_name = "SCARLETT";

## Bonus
select * from film
where title like "%ARMAGEDDON%" and length > 100 ;

select count(*) as behind_the_scenes_qty 
from film
where special_features like "%Behind the Scenes%";









