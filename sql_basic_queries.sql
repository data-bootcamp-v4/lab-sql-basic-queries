#1. Display all available tables in the Sakila database.

SHOW tables FROM sakila;

#2. Retrieve all the data from the tables actor, film and customer.

SELECT * FROM (sakila.actor, sakila.film, sakila.customer);

/*3. Retrieve the following columns from their respective tables:

	3.1 Titles of all films from the film table
	3.2 List of languages used in films, with the column aliased as language from the language table
	3.3 List of first names of all employees from the staff table */
#3.1    
SELECT title
FROM sakila.film;

#3.2
select name as language
from language;

#3.3
SELECT first_name
FROM staff;

/* 4.  Retrieve unique release years. */

SELECT distinct release_year 
FROM film;

/* 5. Counting records for database insights:

	5.1 Determine the number of stores that the company has.
	5.2 Determine the number of employees that the company has.
	5.3 Determine how many films are available for rent and how many have been rented.
	5.4 Determine the number of distinct last names of the actors in the database. */

#5. 1
SELECT COUNT(distinct store_id) as number_of_stores
 FROM staff;
 
 #5.2
 SELECT COUNT(distinct staff_id) as number_of_employees
 from staff;
 
 
#5.3
 SELECT COUNT(distinct inventory_id) as number_of_movies
 from rental;
 
 
 #5.4
 SELECT COUNT(distinct last_name) as number_of_lastnames
 from actor;
 
 
 /* 6. Retrieve the 10 longest films. */
 
 SELECT title, length From film
 ORDER BY length DESC limit 10 ;
 
 /* Use filtering techniques in order to:

7.1 Retrieve all actors with the first name "SCARLETT". */

SELECT CONCAT(first_name, " ", last_name)
FROM actor
WHERE actor.first_name = "SCARLETT";

/* BONUS:

7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
7.3 Determine the number of films that include Behind the Scenes content */


#7.2
SELECT title, length
FROM sakila.film 
WHERE (title LIKE "%ARMAGEDDON%" AND length > 100);

#7.3
SELECT title, special_features
FROM sakila.film
WHERE special_features LIKE "%Behind the Scenes%"
 



