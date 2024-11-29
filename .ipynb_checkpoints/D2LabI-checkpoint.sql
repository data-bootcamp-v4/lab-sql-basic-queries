show processlist;
USE sakila;  -- Switch to the database

/*Display all available tables in the Sakila database.

Retrieve all the data from the tables actor, film and customer.

Retrieve the following columns from their respective tables:

3.1 Titles of all films from the film table
3.2 List of languages used in films, with the column aliased as language from the language table
3.3 List of first names of all employees from the staff table
Retrieve unique release years.

Counting records for database insights:

5.1 Determine the number of stores that the company has.
5.2 Determine the number of employees that the company has.
5.3 Determine how many films are available for rent and how many have been rented.
5.4 Determine the number of distinct last names of the actors in the database.
Retrieve the 10 longest films.

Use filtering techniques in order to:

7.1 Retrieve all actors with the first name "SCARLETT".*/

-- Display all available tables in the Sakila database.
SHOW TABLES;

-- Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.1 Titles of all films from the film table
SELECT title
FROM film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name AS Language
FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name
FROM staff;