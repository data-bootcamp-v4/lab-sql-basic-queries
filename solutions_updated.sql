SHOW DATABASES;

SELECT * FROM sakila.actor;
use sakila;
SHOW CREATE TABLE actor;
SHOW TABLES;
select * from actor;
select * from film;
select * from customer;
select title  from sakila.film;
select original_language_id as language from sakila.film;
select first_name from sakila.staff;
select distinct release_year from sakila.film;
select count(store_id) from sakila.store;
select count(staff_id) from sakila.staff;
SELECT COUNT(*) AS available_for_rent FROM inventory;
select count(*) as rented_amount from rental;
select distinct count(last_name) from actor;
select title, length from film
order by length desc
limit 10;
select * from actor 
where first_name= "SCARLETT";