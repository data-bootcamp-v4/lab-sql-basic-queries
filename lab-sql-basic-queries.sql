#1. Display all available tables in the Sakila database.
SHOW TABLES;

#2. Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

#3. Retrieve the following columns from their respective tables:
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;

#4. Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

#5. Counting records for database insights:
#5.1 Determine the number of stores that the company has.
SELECT COUNT(*) AS number_of_stores FROM store;

#5.2 Determine the number of employees that the company has.
SELECT COUNT(*) AS number_of_employees FROM staff;

#5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*) AS number_of_films_available FROM film;
SELECT COUNT(*) AS number_of_rented_films FROM rental;

#5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS number_of_distinct_last_names FROM actor;

#6. Retrieve the 10 longest films
SELECT title, length FROM film ORDER BY length DESC LIMIT 10;

#7. Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor WHERE first_name = 'SCARLETT';