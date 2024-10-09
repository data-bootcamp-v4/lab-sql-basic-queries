use sakila;

show tables;

# Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

# Retrieve the following columns from their respective tables:
# Titles of all films from the film table
select title
from film;
# List of languages used in films, with the column aliased as language from the language table
# select language_id, name
# from film;

# List of first names of all employees from the staff table
select first_name
from staff;

# Retrieve unique release years.
select distinct release_year
from film;

# Counting records for database insights:
	# Determine the number of stores that the company has.
select count(store_id)
from store;

	# Determine the number of employees that the company has.
select count(staff_id)
from staff;

	# Determine how many films are available for rent and how many have been rented.
select count(inventory_id)
from inventory;

select count(rental_id) # rented in total accumulated or currently?! -> bc it is more than inventory count
from rental;

# Determine the number of distinct last names of the actors in the database.
select count(last_name)
from actor;

# Retrieve the 10 longest films.
select length 
from film
order by length desc
limit 10;

# Use filtering techniques in order to retrieve all actors with the first name "SCARLETT".:
select first_name
from actor
where first_name = "SCARLETT";

