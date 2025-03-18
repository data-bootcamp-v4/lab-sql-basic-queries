USE sakila;

SHOW TABLES;

select * from actor;

select * from film;

select * from customer;

select * from film;

select title from film;

select language_id from film;

select * from language;

select * from staff;

select first_name from staff;

select distinct release_year from film;

select * from store;

select count(distinct store_id) as number_of_store from store;

select * from staff;

select count(distinct staff_id) as number_of_staff from staff;

select * from film;

select count(distinct film_id) as numbers_of_films from film;

select * from rental;

SHOW PROCEDURE STATUS;

SHOW CREATE PROCEDURE film_in_stock;

select * from inventory;

SELECT COUNT(*) AS total_movies FROM film;

SELECT COUNT(*) AS total_available_films
FROM inventory
WHERE inventory_id NOT IN (
    SELECT inventory_id
    FROM rental
    WHERE return_date IS NULL
);

SELECT COUNT(*) AS total_not_available_films
FROM inventory
WHERE inventory_id IN (
    SELECT inventory_id
    FROM rental
    WHERE return_date IS NULL
);

select count(distinct last_name) from actor as number_of_actor_last_names;

select * from film order by length  desc limit 10;

select * from actor;

select * from actor where first_name = 'SCARLETT';

select * from film;

select * from film where title like '%ARMAGEDDON%' and length >= 100;

select *from film where special_features  like '%Behind the Scenes%';