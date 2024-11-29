use sakila;
# Display all available tables in the Sakila database.
show tables;
# Retrieve all the data from the tables actor, film and customer
select *
from actor, film, customer;
# retrieve Titles of all films from the film table
select title
from film;
# List of languages used in films, with the column aliased as language from the language table
select name
from language;
# List of first names of all employees from the staff table
select first_name
from staff;
# Retrieve unique release years.
select distinct release_year
from film;
# Determine the number of stores that the company has.
select count(store_id)
from store;
# Determine the number of employees that the company has.
select count(staff_id)
from staff;
# Determine how many films are available for rent and how many have been rented.
select count(rental_id)
from rental;
select count(rental_date)
from rental;
# Determine the number of distinct last names of the actors in the database.
select distinct last_name
from actor;
# Retrieve the 10 longest films.
select length, title
from film
order by length desc limit 10;
# Retrieve all actors with the first name "SCARLETT".
select first_name
from actor
where first_name like "SCARLETT";
# Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
select title
from film
where title like "%ARMAGEDDON%";
select length, title
from film
where length > 100
order by length desc;
