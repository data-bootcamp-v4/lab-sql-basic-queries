USE sakila;
#1 show all tabkes 
SHOW TABLES;
#2 Retrieve all data from the actor table
SELECT * FROM actor;
# Retrieve all data from the film table
SELECT * FROM film;
# Retrieve all data from the customer table
SELECT * FROM customer;
#3 Retrieve the following columns from their respective tables:
  #3.1 Titles of all films from the film table
  #3.2 List of languages used in films, with the column aliased as language from the language table
  #3.3 List of first names of all employees from the staff table

SELECT title 
FROM film;
SELECT name AS language 
FROM language;
SELECT first_name 
FROM staff;
#4 Retrieve unique release years
SELECT DISTINCT release_year 
FROM film;

#5 Counting records for database insights:

 #5.1 Determine the number of stores that the company has.
 #5.2 Determine the number of employees that the company has.
 #5.3 Determine how many films are available for rent and how many have been rented.
 #5.4 Determine the number of distinct last names of the actors in the database.
 
 #5.1
SELECT COUNT(store_id) AS total_stores 
FROM store;
#5.2
SELECT COUNT(staff_id) AS total_employees 
FROM staff;
#5.3
SELECT 
    (SELECT COUNT(inventory_id) FROM inventory) AS total_films_available_for_rent,
    (SELECT COUNT(rental_id) FROM rental) AS total_films_rented_historically;
    
SELECT COUNT(rental_id) AS films_currently_out_on_rent 
FROM rental 
WHERE return_date IS NULL;
#5.4
SELECT COUNT(DISTINCT last_name) AS unique_actor_last_names 
FROM actor;

#6 Retrieve the 10 longest films.
SELECT title, length 
FROM film 
ORDER BY length DESC 
LIMIT 10;

#7 Use filtering techniques in order to:
  #7.1 Retrieve all actors with the first name "SCARLETT".
  SELECT actor_id, first_name, last_name 
FROM actor 
WHERE first_name = 'SCARLETT';

#7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT title, length, description 
FROM film 
WHERE title LIKE '%ARMAGEDDON%' 
  AND length > 100;

#Hint: use LIKE operator. More information here.
#7.3 Determine the number of films that include Behind the Scenes content

SELECT COUNT(film_id) AS films_with_behind_the_scenes 
FROM film 
WHERE special_features LIKE '%Behind the Scenes%';










