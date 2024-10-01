CREATE DATABASE sakila;
USE sakila;

#2. Retrieve all the data from the tables actor, film and customer.


SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

#3.Retrieve the following columns from their respective tables:

#3.1 Titles of all films from the film table

SELECT title from sakila.film;

#3.2 List of languages used in films, with the column aliased as language from the language table
SELECT DISTINCT name AS languages
FROM sakila.language;

#3.3 List of first names of all employees from the staff table

SELECT DISTINCT first_name FROM sakila.staff;

#4.Retrieve unique release years.
SELECT DISTINCT release_year from sakila.film;

#Counting records for database insights:

#5.1 Determine the number of stores that the company has.
SELECT * from sakila.store;
SELECT COUNT(store_id) from sakila.store;

#5.2 Determine the number of employees that the company has.
SELECT * from sakila.staff;
SELECT COUNT(staff_id) from sakila.staff;

#5.3 Determine how many films are available for rent and how many have been rented.
SELECT * FROM rental;
SELECT COUNT(*) AS rental_id
FROM sakila.rental
WHERE return_date IS NULL;

#5.4 Determine the number of distinct last names of the actors in the database.
SELECT DISTINCT COUNT(last_name) from sakila.actor;

#6.Retrieve the 10 longest films.
SELECT DISTINCT length
FROM sakila.film
ORDER BY length DESC
LIMIT 10;

#7 Use filtering techniques in order to:
#7.1 Retrieve all actors with the first name "SCARLETT".
SELECT CONCAT(first_name,' ',last_name)  AS full_name FROM sakila.actor
WHERE first_name='SCARLETT';

