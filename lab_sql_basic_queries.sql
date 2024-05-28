select * from sakila.actor limit 5;

show tables;

select * from actor, film, customer;

-- Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table
select title from film;
-- 3.2 List of languages used in films, with the column aliased as language from the language table
select name as language from language;
-- select * from film;
-- select language_id as language from film;

-- 3.3 List of first names of all employees from the staff table
-- select * from staff;
select first_name from staff;

-- Retrieve unique release years.

select distinct release_year from film;

-- Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.

select count(*) from store;
-- 5.2 Determine the number of employees that the company has.
select count(*) from staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.
select count(*) from rental;
select count(*) from inventory;

-- 5.4 Determine the number of distinct last names of the actors in the database.
select count(distinct last_name) from actor;

-- Retrieve the 10 longest films. 
select title, length from film order by length desc limit 10;

-- Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".
select actor_id, first_name, last_name from actor where first_name like "scarlett";

-- BONUS:

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
select * from film where title like "%armageddon%" and length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content
select count(*) from film where special_features like "%Behind the Scenes%";
