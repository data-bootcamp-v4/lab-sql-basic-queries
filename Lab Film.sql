USE sakila;

SHOW TABLES;

# 2: Retrieve all the data from the tables actor, film and customer
SELECT *
FROM actor, film, customer;

# 3: Retrieve the following columns from their respective tables:
# Titles of all films from the film table
SELECT title 
FROM film;

# List of languages used in films, with the column aliased as language from the language table
SELECT name AS language
FROM language;

# List of first names of all employees from the staff table
SELECT first_name
FROM staff;

# 4: Retrieve unique release years
SELECT DISTINCT release_year from film;

#5: Counting records for database insights:
# Determine the number of stores that the company has
SELECT store_id
FROM store;

# Determine the number of employees that the company has
SELECT staff_id
FROM staff;

# Determine how many films are available for rent and how many have been rented
SELECT count(inventory_id)
FROM inventory;

SELECT count(rental_id)
FROM rental;

# Determine the number of distinct last names of the actors in the database.
SELECT DISTINCT count(last_name)
FROM actor;

# 6: Retrieve the 10 longest films
SELECT title 
FROM film
ORDER BY length DESC
LIMIT 10;

#7: Use filtering techniques in order to:
# Retrieve all actors with the first name "SCARLETT"
SELECT first_name, last_name
FROM actor
WHERE first_name = "Scarlett";

# BONUS:

# 7.2: Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes
# Hint: use LIKE operator. More information here
SELECT title, length
FROM film
WHERE title LIKE "Ar%" and length > 100;

# 7.3: Determine the number of films that include Behind the Scenes content
SELECT count(title)
FROM film
WHERE special_features LIKE "%Behind the Scenes%";

SELECT *
FROM film;


