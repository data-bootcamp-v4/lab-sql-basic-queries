USE sakila;

SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title from film;

SELECT name as language from language;

select first_name from staff;

select distinct release_year from film;

select COUNT(*) from store;

select count(*) from staff;

select count(*) as films_available from inventory;

select count(distinct inventory_id) from rental;

select distinct count(last_name) from actor;

select * from film order by length desc limit 10;

select * from actor where first_name = "scarlett";

select * from film where title LIKE "%armageddon%" and length >= 100;

select count(*) from film where special_features like "%behind the scenes%";

select * from film;



