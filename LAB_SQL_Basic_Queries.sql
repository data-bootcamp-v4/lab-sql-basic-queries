0. Use the sakila database to do the following tasks

1. Show all tables

use sakila;

2. Retrieve all the data from the tables actor, film and customer.

select * from actor;
select * from film;
select * from customer;

3. Retrieve the following columns from their respective tables:

3.1 Titles of all films from the film table

select title from film;

3.2. List of languages used in films, with the column aliased as language from the language table

select name as language from language;

3.3 List of first names of all employees from the staff table

select first_name from staff;

4. Retrieve unique release years.

select distinct release_year as unique_year from film;

5. Counting records for database insights:

5.1 Determine the number of stores that the company has.

select count(store_id) as company_number_stores from store

5.2 Determine the number of employees that the company has.

select count(staff_id) as company_number_employees from staff

5.3 Determine how many films are available for rent and how many have been rented.

select count(distinct film_id) as how_many_available from inventory
select count(inventory_id) as how_many_rented from rental

5.4 Determine the number of distinct last names of the actors in the database.

select count(distinct last_name) as last_name_unique from actor

6. Retrieve the 10 longest films.

select film_id, title, length from film
order by length desc
limit 10;

Use filtering techniques in order to:

7.1 Retrieve all actors with the first name "SCARLETT".

select * from actor
where first_name = "Scarlett";

7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

select * from film
where length > 100 and title like '%armageddon%';

Hint: use LIKE operator. More information here.

7.3 Determine the number of films that include Behind the Scenes content

select count(special_features) as total_behind_scenes from film
where special_features like '%behind the scenes%'