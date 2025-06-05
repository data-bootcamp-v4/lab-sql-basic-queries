USE sakila;
#Display all available tables in the Sakila database.
SHOW TABLES;

#Retrieve all the data from the tables actor, film and customer

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

#Retrieve: 1. Titles of all films from the film table 2. List of languages used in films, with the column aliased as language from the language table 3. List of first names of all employees from the staff table

SELECT title FROM film;
SELECT name FROM language;
SELECT first_name FROM staff;

#Retrieve unique release years.

SELECT DISTINCT release_year FROM film;  # DISTINCT ensures that only unique values appear in the results.

##Counting records for database insights

 #number of stores that the company has:
 SELECT COUNT(*) AS store_count FROM store; # AS is used to rename the column in the result as store_count
 
 #number of employees that the company has:
 SELECT COUNT(*) AS employees_count FROM staff;
 
 #how many films are available for rent and how many have been rented:
 SELECT COUNT(*) AS available_films FROM inventory;
 SELECT COUNT(*) AS rented_films FROM rental;
 
 #number of distinct last names of the actors in the database:
 SELECT COUNT(DISTINCT last_name) AS unique_last_name FROM actor;
 
##the 10 longest films:
SELECT title, length FROM film 
ORDER BY length DESC #sorts the films in descending order, showing the longest ones first
LIMIT 10;

##filtering techniques:

 # all actors with the first name "SCARLETT"
 SELECT first_name FROM actor 
 WHERE first_name='SCARLETT';
 
 # all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes:
 
 SELECT title, length FROM film
 where title='ARMAGEDDON' AND length>100;
 
  SELECT title, length FROM film
  where title LIKE '%ARMAGEDDON%' AND length>100 # filters movies that contain "ARMAGEDDON" in their title.
  ORDER BY length ASC;
  
  #number of films that include Behind the Scenes content:
  SELECT COUNT(*) AS behind_the_scenes_films FROM film 
  WHERE special_features LIKE '%Behind the Scenes%';
  

  
 
 
 


