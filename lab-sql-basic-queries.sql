# Use the sakila database to do the following tasks:
# Display all available tables in the Sakila database.

USE sakila;

SHOW TABLES 
FROM sakila;

# Retrieve all the data from the tables actor, film and customer.

SELECT *
FROM actor, film, customer;

# Retrieve the following columns from their respective tables:
# Titles of all films from the film table

SELECT film_id, title
FROM film;

# List of languages used in films, with the column aliased as language from the language table

SELECT language_id, name AS language
FROM language;

# List of first names of all employees from the staff table

SELECT staff_id, first_name
FROM staff;

# Retrieve unique release years.
SELECT DISTINCT release_year
FROM film;

# Counting records for database insights:
# Determine the number of stores that the company has.

SELECT COUNT(store_id) AS total_stores
FROM store;

# Determine the number of employees that the company has.

SELECT COUNT(staff_id) AS total_employees
FROM staff;

# Determine how many films are available for rent and how many have been rented.

SELECT COUNT(inventory_id) AS available
FROM inventory;

# and how many have been rented. 
SELECT COUNT(rental_id) AS rented
FROM rental;

# Determine the number of distinct last names of the actors in the database.

SELECT DISTINCT last_name
FROM actor;

# Retrieve the 10 longest films.

SELECT film_id, length
FROM film
ORDER BY length DESC
LIMIT 10;


# Use filtering techniques in order to:
# Retrieve all actors with the first name "SCARLETT".

SELECT first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT';



