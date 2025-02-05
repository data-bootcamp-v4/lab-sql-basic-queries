## SQL LAB DAY 2##

-- 1) display all available tables in Sakila database

use sakila;
show tables;

-- 2) retrieve data from tables actor , film and customer

select * from actor;
select * from film;
select * from customer;

-- 3)Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table
select distinct title from film;
-- 3.2 List of languages used in films, with the column aliased as language from the language table
select distinct(name) as language from language ;
-- 3.3 List of first names of all employees from the staff table
select first_name from staff;


-- 4)Retrieve unique release years.
select distinct(release_year) from film;

-- Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.
select count(store_id) from store;
-- 5.2 Determine the number of employees that the company has.
select count(staff_id) from staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.
select count(distinct film_id)  as no_of_film_rented from inventory ;
select count(distinct film_id) as no_of_film_to_rent from film ;
-- 5.4 Determine the number of distinct last names of the actors in the database.
select distinct last_name from actor;
-- Retrieve the 10 longest films.
select film_id from film
order by length desc
limit 10;
-- Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".
-- BONUS:
select  * from actor where first_name like  'SCARLETT';
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
select * from film
where title LIKE '%ARMAGEDDON%'
and length >100;
-- Hint: use LIKE operator. More information here.
-- 7.3 Determine the number of films that include Behind the Scenes content
select count(film_id) from film
where special_features like '%Behind the Scenes%';

