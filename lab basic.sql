-- Use the sakila database to do the following tasks:
use sakila;
-- 1- Display all available tables in the Sakila database.
SHOW tables;

-- 2- Retrieve all the data from the tables actor, film and customer.
SELECT * FROM sakila.actor, sakila.film, sakila.customer;


-- 3- Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table
select film.title FROM sakila.film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
select film.title, language.name as language from sakila.film, sakila.language;

-- 3.3 List of first names of all employees from the staff table
select staff.first_name from sakila.staff;

-- 4- Retrieve unique release years.
select distinct release_year from sakila.film;

-- 5- Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.
select count(store.store_id) as number_of_store from sakila.store;

-- 5.2 Determine the number of employees that the company has.
select count(staff.staff_id) as number_of_employees from sakila.staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
select count(distinct inventory.inventory_id) as number_film_available, count(distinct rental.rental_id) as number_film_rented from sakila.inventory, sakila.rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.
select count(distinct actor.last_name) as number_different_last_name from sakila.actor;
-- 6- Retrieve the 10 longest films.
select film.length, film.title from sakila.film 
order by film.length desc
limit 10;
-- 7- Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".
select * from sakila.actor
WHERE actor.first_name LIKE "SCARLETT" ; 

-- BONUS:

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
select film.title, film.length from sakila.film
WHERE film.title LIKE "%ARMAGEDDON%" AND film.length > 100;

-- Hint: use LIKE operator. More information here.
-- 7.3 Determine the number of films that include Behind the Scenes content
select count(film.special_features) from sakila.film
WHERE film.special_features LIKE "%Behind the Scenes%";
