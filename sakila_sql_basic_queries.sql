USE sakila;

# Display all available tables in the Sakila database.
SHOW FULL TABLES;

# Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;

SELECT * FROM film;

SELECT * FROM customer;

# Retrieve unique release years.
SELECT DISTINCT(release_year) FROM film;

# Counting records for database insights:
# 5.1 Determine the number of stores that the company has.
SELECT COUNT(store_id) FROM store;

# 5.2 Determine the number of employees that the company has.
SELECT COUNT(staff_id) FROM staff;

# 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(inventory_id) FROM inventory; # available for rental
SELECT COUNT(rental_id) FROM rental; # how many rentals have been
SELECT COUNT(DISTINCT inventory_id) FROM rental; # how many unique movies have been rented

# 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) FROM actor;

# Retrieve the 10 longest films.
SELECT * FROM film ORDER BY length DESC LIMIT 10;

# Use filtering techniques in order to:
# 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor WHERE first_name = 'SCARLETT';

# BONUS
# 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

# 7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(film_id) FROM film WHERE special_features LIKE '%Behind the Scenes%';


