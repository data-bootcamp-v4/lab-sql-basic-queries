create database sakila;
use sakila;

SHOW TABLES;
select * from actor;
select * from film;
select * from customer;
select title from film;
select * from language;
SELECT name AS language FROM language;
select * from staff;
select first_name from staff;
select distinct release_year from film;
SELECT COUNT(DISTINCT store_id) FROM store;
SELECT COUNT(DISTINCT staff_id) FROM staff;
SELECT 
    (SELECT COUNT(*) FROM inventory WHERE inventory_id NOT IN (SELECT inventory_id FROM rental)) AS available_movies,
    (SELECT COUNT(DISTINCT inventory_id) FROM rental) AS rented_movies;
SELECT COUNT(DISTINCT last_name) AS unique_last_names FROM actor;
select first_name from actor where first_name in ('SCARLETT');
select count(first_name) from actor where first_name in ('SCARLETT');
select title from film where title like '%ARMAGEDDON%' and length > 100;
select count(*) from film  where special_features like '%Behind the Scenes%';



