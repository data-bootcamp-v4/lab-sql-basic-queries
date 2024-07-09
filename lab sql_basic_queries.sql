USE Sakila;
SELECT * FROM film;
SHOW Tables;
#Retrieve all the data from the tables `actor`, `film` and `customer`

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
#Titles of all films from the `film` table
Select title from film;
#List of languages used in films, with the column aliased as `language` from the `language` table

SELECT language_id AS language
FROM language;

#List of first names of all employees from the `staff` table

SELECT first_name 
From staff;

#4. Retrieve unique release years
SELECT DISTINCT release_year
FROM film;

#5.1 Determine the number of stores that the company has.
SELECT COUNT(*) AS number_of_store
FROM store;

#5.2 Determine the number of employees that the company has.
SELECT COUNT(*) AS number_of_staff
FROM staff;

#5.3 Determine how many films are available for rent and how many have been rented.
SELECT film_id 
from film;
SELECT rental_id 
from Rental;

#5.4 Determine the number of distinct last names of the actors in the database.
SELECT distinct last_name 
from actor;

#retrieve the 10 longest films.

SELECT title,length
FROM film
ORDER BY length DESC
LIMIT 10;

#7.1 Retrieve all actors with the first name "SCARLETT".
SELECT first_name
FROM actor
WHERE first_name LIKE "%SCARLETT%";

# 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes
SELECT title,length
FROM film
WHERE  title LIKE "%ARMAGEDDON%"
ORDER BY length > 100;

#7.3 Determine the number of films that include Behind the Scenes content

SELECT special_features 
FROM film;
SELECT COUNT(*) AS number_of_film_with_SF
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

