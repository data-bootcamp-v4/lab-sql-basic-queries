-- 1 Display all available tables in the Sakila database.
SHOW TABLES;

-- 2 Retrieve all the data from the tables actor, film and customer.
SELECT *
FROM actor, film, customer;

-- 3 Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
select title
from film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
select distinct name
from language;

-- 3.3 List of first names of all employees from the staff table
select first_name
from staff;

-- 4 Retrieve unique release years.
select distinct release_year
from film;

-- 5 Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
select distinct store_id
from store;

-- 5.2 Determine the number of employees that the company has.
select staff_id
from staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
-- films available for rent
select count(inventory_id)
from rental;

-- films rented
select count(rental_id) 
from rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.
select distinct last_name 
from actor;

-- 6 Retrieve the 10 longest films.
select title, length
from film
order by length desc
limit 10;

-- 7 Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
select first_name, last_name
from actor
where first_name = "SCARLETT";

-- BONUS:
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
select title 
from film
where title like '%ARMAGEDDON%' and length > 100;

-- Hint: use LIKE operator. More information here.
-- 7.3 Determine the number of films that include Behind the Scenes content

-- what's inside special_features
select count(special_features)
from film;

-- behind the scenes count
select count(special_features)
from film
where special_features like'%behind the scenes%';