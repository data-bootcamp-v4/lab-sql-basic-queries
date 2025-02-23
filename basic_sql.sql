/*1
use sakila;
show tables;
/*2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;


/*3/
select title from film;
select name as language from language;
select first_name from staff;

/*4/
SELECT distinct release_year FROM film;
/*5/
select count(*) as number_stores from store;
select count(*) as number_employees from staff;

select (select count(*) from inventory
where inventory_id NOT IN )

SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM actor;

/*6/
select title, length
from film
order by length desc
limit 10;

/*7/
select *  from actor
where first_name ='SCARLETT';

select *  from film
where title like '%ARMAGEDDON%' and length >100;

SELECT COUNT(*)
FROM film
where special_features='Behind the Scenes';
