-- 2 Retrieve all the data from the tables actor, film and customer
select * from sakila.actor;
select * from sakila.film;
select * from sakila.customer;

-- 3 Retrieve the following columns from their respective tables:
-- 		Titles of all films from the film table
-- 		List of languages used in films, with the column aliased as language from the language table
-- 		List of first names of all employees from the staff table

select title from sakila.film;
select name from sakila.language;
select first_name from sakila.staff;

-- 4 Retrieve unique release years.

select distinct release_year from sakila.film;

-- 5 Counting records for database insights:
-- 		5.1 Determine the number of stores that the company has.
-- 		5.2 Determine the number of employees that the company has.
-- 		5.3 Determine how many films are available for rent and how many have been rented.
--  	5.4 Determine the number of distinct last names of the actors in the database.

select count(store_id) from sakila.store;
select count(staff_id) from sakila.staff;
select count(film_id) from sakila.film;
select count(rental_rate) from sakila.film;
select count(distinct last_name) from sakila.actor;

-- Retrieve the 10 longest films.

select title, length from sakila.film
order by length desc
limit 10;

-- Use filtering techniques in order to:
-- 		7.1 Retrieve all actors with the first name "SCARLETT".

select * from sakila.actor
where first_name = "SCARLETT";
