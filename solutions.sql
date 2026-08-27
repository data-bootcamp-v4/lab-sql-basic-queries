USE sakila;
SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title FROM film;
SELECT * FROM language;
SELECT name AS language FROM language;
SELECT first_name FROM staff;

SELECT release_year FROM film;

SELECT * FROM store; 
SELECT COUNT(*) FROM store;

SELECT * FROM staff;
SELECT COUNT(*) FROM staff;

SELECT COUNT(*) FROM inventory;
SELECT COUNT(*) FROM rental;

SELECT COUNT(DISTINCT last_name) FROM actor;


SELECT title, length FROM film ORDER BY length DESC LIMIT 10;


SELECT * FROM actor WHERE first_name = 'SCARLETT';

/*
Challenge
Use the sakila database to do the following tasks:
✅ 1. Display all available tables in the Sakila database.
✅ 2. Retrieve all the data from the tables actor, film and customer.
✅ 3. Retrieve the following columns from their respective tables:
	✅ 3.1 Titles of all films from the film table
	✅ 3.2 List of languages used in films, with the column aliased as language from the language table
	✅ 3.3 List of first names of all employees from the staff table

✅ 4. Retrieve unique release years.
✅ 5. Counting records for database insights:
	✅ 5.1 Determine the number of stores that the company has.
	✅ 5.2 Determine the number of employees that the company has.
	✅ 5.3 Determine how many films are available for rent and how many have been rented.
	✅ 5.4 Determine the number of distinct last names of the actors in the database.

✅ 6. Retrieve the 10 longest films.
✅ 7. Use filtering techniques in order to:
	✅ 7.1 Retrieve all actors with the first name "SCARLETT".
*/
