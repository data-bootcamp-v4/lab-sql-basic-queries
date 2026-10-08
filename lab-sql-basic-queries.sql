USE sakila;

-- Display all available tables in the Sakila database

SHOW TABLES;

-- Retrieve all the data from the tables actor, film and customer

select * from actor;

select * from film;

select * from cotumer;

-- Retrieve the following columns from their respective tables:
-- Titles of all films from the film table
 
 select title from film;
 
 -- List of languages used in films, with the column aliased as language from the language table

select name as language from language; 
 
-- List of first names of all employees from the staff table

select first_name from staff;

-- Retrieve unique release years

select distinct release_year from film;

-- Counting records for database insights:
-- Determine the number of stores that the company has.

select count(distinct store_id) as number_of_stores from store;

-- Determine the number of employees that the company has.

select count(staff_id) from staff;

-- Determine how many films are available for rent and how many have been rented.

select count(inventory_id) as available from  inventory ;

select count(rental_id) as rented from rental ;

-- Determine the number of distinct last names of the actors in the database.

select count(distinct last_name) from actor;


-- Retrieve the 10 longest films.

select title, length from film order by length desc limit 10 ;


-- Use filtering techniques in order to:
-- Retrieve all actors with the first name "SCARLETT".

select * from actor where first_name = "SCARLETT";

-- BONUS:
-- Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

select * from film where title like '%ARMAGEDDON%' and length <= 100;

-- Determine the number of films that include Behind the Scenes content

select count(film_id) from film where special_features = 'Behind the Scenes';