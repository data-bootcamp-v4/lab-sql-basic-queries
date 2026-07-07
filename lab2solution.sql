
-- 1. Display all available tables in the Sakila database.
Use Sakila;
show Tables;

-- 2. Retrieve all the data from the tables actor, film and customer

select * from actor, film, customer;  -- fetching takes time

-- or
select * from actor;
select * from film;
select * from customer;

-- 3. Retrieve the following columns from respective tables

-- titles of all films

Select title from film;

-- List of languages used in films, with the column aliased as language from the language table


select * from language ;

select Name as Language from language;

-- List of first names of all employees from the staff table

select * from staff;

select first_name from staff;

-- 4 retreive Unique release year

select distinct release_year from film;  -- unique info from particular column

-- 5. Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.

select store_id from store;

select count(store_id) from store; 

-- 5.2 Determine the number of employees that the company has.

select staff_id from staff;
select count(staff_id) from staff; 

-- 5.3 Determine how many films are available for rent and how many have been rented.

select inventory_id from inventory;
select count(inventory_id ) from inventory; 
select rental_id  from rental;
select count(rental_id ) from rental; 

-- 5.4 Determine the number of distinct last names of the actors in the database.

select distinct last_name from actor;
select count( distinct last_name) from actor;

-- 6. Retrieve the 10 longest films.

select description from film;

select * from film_text;
select title from film_text;

select title, length from film
order by length desc 
limit 10;

-- Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".

Select * from actor 
where first_name = "SCARLETT";

-- BONUS:

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

select "ARMAGEDDON" from sakila.film
where title like "%ARMAGEDDON%" and lenght > 100;  -- not working

SELECT title, length 
FROM film 
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;



-- Hint: use LIKE operator. More information here.
-- 7.3 Determine the number of films that include Behind the Scenes content

select * from film;

select count(film_id)
from film
where special_features like "%Behind the Scenes content%";








