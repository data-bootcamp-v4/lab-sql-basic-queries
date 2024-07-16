#Display all available tables in the Sakila database.
SHOW tables

#Retrieve all the data from the tables actor, film and customer.

SELECT * from actor
SELECT * from film
SELECT * from customer

# 3. Retrieve the following columns from their respective tables:

#3.1 Titles of all films from the film table

SELECT title from film

#3.2 List of languages used in films, with the column aliased as language from the language table

SELECT DISTINCT name as language
from language

#3.3 List of first names of all employees from the staff table

SELECT first_name
FROM staff

#Retrieve unique release years.

SELECT DISTINCT release_year
from film

#Counting records for database insights:

#5.1 Determine the number of stores that the company has.

SELECT count(DISTINCT store_id)
from store

#5.2 Determine the number of employees that the company has.

SELECT count(DISTINCT staff_id)
from staff
#5.3 Determine how many films are available for rent and how many have been rented.

select *
from rental

#5.4 Determine the number of distinct last names of the actors in the database.

select count(DISTINCT last_name) as "number of distinct last names"
from actor

#Retrieve the 10 longest films.

select title as "Longest films in this database"
from film
order by length DESC
limit 10

#Use filtering techniques in order to: 7.1 Retrieve all actors with the first name "SCARLETT".

select first_name as "all actors named Scarlett", last_name as "last name"
from actor
where first_name = "SCARLETT"

#
#
#
#
#