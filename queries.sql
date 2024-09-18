-- 1. Display all available tables in the Sakila database.
use sakila;
show tables;

-- 2. Retrieve all the data from the tables actor, film and customer.
select * from actor;
select * from film;
select * from customer;

-- 3. Retrieve the following columns from their respective tables:
	-- 3.1. Titles of all films from the film table
select title from film;

	-- 3.2. List of languages used in films, with the column aliased as language from the language table
select * from language;
select name as language from language;    
    
	-- 3.3. List of first names of all employees from the staff table
select * from staff;
select first_name from staff;

-- 4. Retrieve unique release years.
select * from film;
select distinct release_year from film;

-- 5. Counting records for database insights:

	-- 5.1. Determine the number of stores that the company has.
select * from store;
select count(*) as number_of_stores from store;
    
	-- 5.2. Determine the number of employees that the company has.
select count(*) as number_of_employees from staff;
    
	-- 5.3. Determine how many films are available for rent and how many have been rented.
select * from inventory;
select count(*) as films_available_for_rent from inventory;
select * from rental;
select count(distinct inventory_id) as films_rented from rental;
    
	-- 5.4. Determine the number of distinct last names of the actors in the database.
select count(distinct last_name) as distinct_last_names from actor;    
    
-- 6. Retrieve the 10 longest films.
select title, length from film order by length desc limit 10;

-- 7. Use filtering techniques in order to:

	-- 7.1 Retrieve all actors with the first name "SCARLETT".
select * from actor where first_name = 'SCARLETT';