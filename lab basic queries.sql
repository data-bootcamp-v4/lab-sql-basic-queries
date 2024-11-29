# 1. Display all available tables in the Sakila database.
USE sakila;

SHOW TABLES;

# 2. Retrieve all the data from the tables actor, film and customer.

SELECT * FROM actor,film,customer;

#Retrieve the following columns from their respective tables:
#3.1 Titles of all films from the film table
#3.2 List of languages used in films, with the column aliased as language from the language table
#3.3 List of first names of all employees from the staff table


SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;

# 4.Retrieve unique release years
SELECT DISTINCT release_year FROM film;


# Counting records for database insights:

# 5.1 Determine the number of stores that the company has.
# 5.2 Determine the number of employees that the company has.
# 5.3 Determine how many films are available for rent and how many have been rented.
# 5.4 Determine the number of distinct last names of the actors in the database.

# 5.1
SELECT COUNT(store_id) FROM staff;
# 5.2
SELECT COUNT(staff_id) FROM staff;
# 5.3
SELECT DISTINCT COUNT(film_id) FROM inventory;
# 5.4 
SELECT DISTINCT COUNT(last_name) FROM actor;


# Retrieve the 10 longest films.
SELECT title, length 
FROM film
ORDER BY length DESC
LIMIT 10;


#Use filtering techniques in order to:
# 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT actor_id, first_name,last_name
FROM actor
WHERE first_name = "SCARLETT" OR 
UPPER(first_name) = "SCARLET";

# 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes
SELECT title
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
