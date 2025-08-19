use sakila;

select * from actor;
select * from film;
select * from customer;

select titles from film;
select name as aliased from language;
select first_name from staff;

select distinct release_year from film;

select count(store_id) from store;
select count(staff_id) from staff;

SELECT 
    COUNT(*) AS currently_rented,
    (SELECT COUNT(*) FROM inventory) - COUNT(*) AS currently_available
FROM rental
WHERE return_date IS NULL;

SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

select * from film
order by length desc
limit 10;

select * from actor
where first_name = "SCARLETT";

select * from film
where special like '%ARMAGEDDON%' and length > 100;

select count(*) from film
where special_features like '%Behind the Scenes%';