USE sakila;

SHOW TABLES;

#Retrieve all the data from the tables actor, film and customer.
SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;

#Retrieve the following columns from their respective tables:
#3.1 Titles of all films from the film table
#3.2 List of languages used in films, with the column aliased as language from the language table
#3.3 List of first names of all employees from the staff table

SELECT title
FROM film;

SELECT DISTINCT name
FROM language;

SELECT first_name
FROM staff;

# Retrieve unique release years.

SELECT DISTINCT release_year
FROM film;

# Counting records for database insights:
#5.1 Determine the number of stores that the company has.
#5.2 Determine the number of employees that the company has.
#5.3 Determine how many films are available for rent and how many have been rented.
#5.4 Determine the number of distinct last names of the actors in the database.

SELECT COUNT(store_id)
FROM store;

SELECT COUNT(staff_id)
FROM staff;

SELECT COUNT(staff_id)
FROM staff;

SELECT * FROM rental;

SELECT count(inventory_id)
FROM inventory; #4,581

SELECT count(rental_id)
FROM rental;  #16,044

# This NOT -inicio
SELECT inventory_id, MAX(rental_date) AS a, MAX(return_date) AS b,
CASE
	WHEN (b - a) > 0 THEN "Available"
    ELSE "Rented"
END AS status_inventory
FROM rental
GROUP BY inventory_id;

SELECT inventory_id, MAX(rental_date), MAX(return_date)
FROM rental
GROUP BY inventory_id;

# This NOT -fin

SELECT DISTINCT last_name
FROM actor;

# Retrieve the 10 longest films.

SELECT title , length
FROM film
ORDER BY length DESC
LIMIT 10;

# Use filtering techniques in order to: Retrieve all actors with the first name "SCARLETT".

SELECT first_name, last_name
FROM actor
WHERE first_name = "SCARLETT";

# Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT title, length
FROM film
WHERE title LIKE "%ARMAGEDDON%" AND length > 100;

# Determine the number of films that include Behind the Scenes content

SELECT title, special_features
FROM film
WHERE special_features LIKE "%Behind the Scenes%";
