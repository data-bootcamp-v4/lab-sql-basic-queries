-- 1
USE sakila;
SHOW TABLES;

-- 2 
Select * from actor, film, customer;

-- 3.1
Select title from film;

-- 3.2

Select name as language from language;

-- 3.3
Select first_name from staff;

-- 4

Select distinct release_year from film;

-- 5.1

Select COUNT(*) from store;

-- 5.2
Select COUNT(*) from staff;

-- 5.3

SELECT COUNT(rental.rental_id) 
FROM inventory
LEFT JOIN rental ON inventory.inventory_id = rental.inventory_id
WHERE rental.return_date IS NULL;
--
Select distinct (count(inventory_id)) from rental;

-- 5.4
Select distinct last_name from actor;

-- 6
Select * From film
order by length desc
Limit 10;

-- 7.1
Select * from actor 
where first_name = 'SCARLETT';

-- 7.2
Select * from film 
where title like '%ARMAGEDDON%' and length > 100;

-- 7.3
Select COUNT(*) from film
where special_features like '%Behind the Scenes%';
