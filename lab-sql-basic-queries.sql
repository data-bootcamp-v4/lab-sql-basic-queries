/*Show all tables*/
USE sakila;
SHOW tables;

/*Retrieve all the data from the tables `actor`, `film` and `customer`.*/
SELECT * FROM salkila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

/*Retrieve the following columns from their respective tables:*/
#titles of all films from the film table
SELECT * FROM sakila.film;
SELECT title
FROM sakila.film;

# List of languages used in films, with the column aliased as language from the language table
SELECT * FROM sakila.language;
SELECT name AS 'language'
FROM sakila.language;

#List of first names of all employees from the staff table
SELECT * FROM sakila.staff;

#4. Retrieve unique release years.
SELECT * FROM sakila.film;

SELECT DISTINCT release_year
FROM sakila.film;

#Counting records for database insights:
	#5.1 Determine the number of stores that the company has.
SELECT COUNT(*) AS NumberofStores
FROM store;

	#5.2 Determine the number of employees that the company has
SELECT COUNT(*) AS NumberofEmpolyees
FROM staff;

	#5.3Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*) AS number_films_available
FROM (
    SELECT DISTINCT film_id
    FROM sakila.rental
    INNER JOIN sakila.inventory 
    ON sakila.rental.inventory_id = sakila.inventory.inventory_id) AS rent;

	#5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS DistinctLastname
FROM actor;
	
#Retrieve the 10 longest films.
SELECT film_id, title, length
FROM film
ORDER BY length DESC
LIMIT 10;

#7.  Use filtering techniques in order to:
	#- 7.1 Retrieve all actors with the first name "SCARLETT".
    SELECT first_name, last_name
    FROM actor
    WHERE first_name = 'SCARLETT'; 
	#- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. 
	SELECT title, length 
    FROM film 
    WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
    
	#- 7.3 Determine the number of films that include Behind the Scenes content
    
SELECT COUNT(*) AS BehindTheScenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

