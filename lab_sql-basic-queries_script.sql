USE sakila;

# Task 1
SHOW TABLES;

# Task 2
SELECT * FROM actor, film, customer;

# Task 3
#Retrieve the following columns from their respective tables:

#3.1 Titles of all films from the film table
#3.2 List of languages used in films, with the column aliased as language from the language table
#3.3 List of first names of all employees from the staff table

# Task 3.1

SELECT title
FROM film;

# Task 3.2

SELECT name AS language
FROM language;

# Task 3.3
SELECT first_name
FROM staff;

# Task 4
# Retrieve unique release years.

SELECT DISTINCT release_year
FROM film;
#GROUP BY release_year

# Task 5
#Counting records for database insights:

#5.1 Determine the number of stores that the company has.
#5.2 Determine the number of employees that the company has.
#5.3 Determine how many films are available for rent and how many have been rented.
#5.4 Determine the number of distinct last names of the actors in the database.

# Task 5.1

SELECT COUNT(store_id) AS number_stores
FROM store;

# Task 5.2
SELECT COUNT(staff_id) as number_staff
FROM staff;

# Task 5.3a
SELECT COUNT(inventory_id) AS number_movies
FROM inventory;

# Task 5.3b

SELECT COUNT(rental_id) AS number_rental
FROM rental;

# Task 6.0
#Retrieve the 10 longest films.

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

# Task 7.1
#Use filtering techniques in order to:
#Retrieve all actors with the first name "SCARLETT".

SELECT actor_id, first_name
FROM actor
WHERE first_name LIKE "SCARLETT";

# Task 7.2
# Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

SELECT film_id, title, length
FROM film
WHERE title LIKE "%ARMAGEDDON%" AND length > 100
ORDER BY length DESC;

# Task 7.3
# Determine the number of films that include Behind the Scenes content

SELECT film_id, title, special_features
FROM film
WHERE special_features LIKE "%Behind the Scenes%";
