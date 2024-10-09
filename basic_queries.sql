USE sakila;

# 1. display all available tables in the Sakila database.
SHOW tables;

# 2. retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor, film, customer;

# 3.1 Retrieve titles of all films from the film table
SELECT title
FROM film;

# 3.2 Retrieve List of languages used in films, with the column aliased as language from the language table
SELECT name
FROM language;

# 3.3 Retrieve list of first names of all employees from the staff table
SELECT first_name
FROM staff;

# 4 Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

#Counting records for database insights:
# 5.1 Determine the number of stores that the company has.
SELECT COUNT(store_id) FROM store;

# 5.2 Determine the number of employees that the company has.
SELECT COUNT(staff_id) FROM staff;

# 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(DISTINCT(film_id)) FROM inventory;
SELECT COUNT(DISTINCT(rental_id)) FROM rental;

# 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT(last_name))
FROM actor;

# 6. Retrieve the 10 longest films.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

# 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT last_name, first_name
FROM actor
WHERE first_name = 'SCARLETT';

# 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%' and length > 100;

# 7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(title)
FROM film
WHERE special_features LIKE '%behind the scenes%';