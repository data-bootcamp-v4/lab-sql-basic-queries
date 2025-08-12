USE sakila;

# 1. Display all available tables in the Sakila database.'
SHOW TABLES;

# 2. Retrieve all the data from the tables `actor`, `film` and `customer`.

SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;

# 3. Retrieve the following columns from their respective tables:
	#- 3.1 Titles of all films from the `film` table
	#- 3.2 List of languages used in films, with the column aliased as `language` from the `language` table
	#- 3.3 List of first names of all employees from the `staff` table

SELECT title
FROM film;

SELECT name as language
FROM language;

SELECT first_name
FROM staff;


# 4. Retrieve unique release years.
select distinct(release_year)
from film;

# 5.1
select count(*)
from store;

#5.2
select count(*)
from staff;

#5.3
-- step1: find out the films_ids have been rented --> 958 films have been rented
-- step2: find out the films have not been rented-- > 42 films 
SELECT COUNT(f.film_id)
FROM film f
WHERE film_id NOT IN ( 
    select distinct(film_id)
    FROM rental r
    INNER JOIN inventory i ON r.inventory_id = i.inventory_id
);
    
# 5.4 Determine the number of distinct last names of the actors in the database--> 121
select count( distinct(last_name))
from actor;

#  6. Retrieve the 10 longest films.
select title,length
from film
order by length desc
limit 10;

#- 7.1 Retrieve all actors with the first name "SCARLETT".
select *
from actor
where first_name = 'SCARLETT';

#- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. 
select title
from film
where title like '%ARMAGEDDON%' and length > 100;

# - 7.3 Determine the number of films that include Behind the Scenes content
select count(*) as number_of_films
from film
where special_features like '%Behind the Scenes%'