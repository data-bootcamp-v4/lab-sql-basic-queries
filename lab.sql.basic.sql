USE sakila;
#retrieve the whole table 
SHOW TABLES;



#retrieve all data from the actor table
SELECT * FROM actor;

#retrieve all data from the 'film' table
SELECT * FROM film;

#retrieve all data from the 'customer' table
SELECT * FROM customer;

# retrieve titles of all films from the film table
SELECT title
FROM film;

#retriev list of languages used in films, 
#with the column aliased as language from the language table
SELECT name AS language 
FROM language;

#retrieve first names of all staff
SELECT first_name 
FROM staff;

# 4. retrieve unique release years
SELECT DISTINCT release_year
FROM film
ORDER BY release_year;

#5.1 the number of stores that the company has
SELECT COUNT(store_id) AS number_of_stores
FROM store;

#5.2 count the number of employees(staff) from stores
SELECT COUNT(staff_id) AS number_of_employees
FROM staff;

#5.3 determine how many films are available for rent and how many have been rented.

SELECT DISTINCT COUNT(film_id)
FROM film;

SELECT COUNT(*)
FROM rental;


# 5.4 Determine the number of distinct last names of the actors in the database.


SELECT DISTINCT COUNT(last_name)
FROM actor;

#6 retrieve the 10 longest films.

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

#7.1 retrieve all actors with the first name "SCARLETT".

SELECT first_name
FROM actor
WHERE first_name = "SCARLETT"

#bonus: 7.2 










