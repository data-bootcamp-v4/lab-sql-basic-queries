USE sakila;
# showing all tables
SHOW tables;
# 2 retrieve all data  from tables actors , film and customers
SELECT * FROM actor, film , customer ;
# 3 retrieve all film lenguage staff from  their ctables
SELECT title FROM film;
SELECT name FROM language;
SELECT first_name, last_name FROM staff;
# retrieve unique realise years
SELECT DISTINCT release_year FROM film;

#5.1 Determine the number of stores that the company has.
#5.2 Determine the number of employees that the company has.
#5.3 Determine how many films are available for rent and how many have been rented.
#5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(store_id) FROM store;
SELECT COUNT(staff_id) FROM staff;
SELECT COUNT(rental_duration) FROM film;
SELECT COUNT(DISTINCT (last_name)) FROM actor;
#Retrieve the 10 longest films.
SELECT length FROM film
ORDER BY length DESC
LIMIT 10;
#7.1 Retrieve all actors with the first name "SCARLETT".
SELECT  first_name , last_name
FROM actor
WHERE first_name = "Scarlett";
#7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT title , length FROM film
WHERE title LIKE "%ARMAGEDDON%" AND length > 100;


