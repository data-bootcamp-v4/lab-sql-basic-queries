-- Display all available tables.
SHOW TABLES;

-- Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor, film, customer;

-- Retrieve columns from tables
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM STAFF;

-- Retrieve unique release years
SELECT DISTINCT release_year FROM film;

--  Determine the number of stores that the company has. 
select * from sales_by_store;
select count(*) from store;

-- Determine the number of employees that the company has.
select count(*) from staff;

-- Determine how many films are available for rent and how many have been rented.
SELECT 
	COUNT(*) AS total_films_available 
	FROM 
	inventory;
    
SELECT 
    COUNT(DISTINCT rental.inventory_id) AS total_films_rented 
	FROM 
    rental;

-- Determine the number of distinct last names of the actors in the database.

select 
count(distinct(last_name))
from actor;

-- Retrieve the 10 longest films.
select
title, length
from film
order by length desc
limit 10;

-- Retrieve all actors with the first name "SCARLETT"
select first_name, last_name
from actor
where first_name = "SCARLETT";

--  Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
select * from film;

select *
from film
where title LIKE "%ARMAGEDDON%"
and
length > 100;

-- Determine the number of films that include Behind the Scenes content
select count(*)
from film
where special_features LIKE "%Behind the Scenes%";