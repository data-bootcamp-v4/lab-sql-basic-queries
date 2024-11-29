USE sakila;
# 1 Display all available tables in the Sakila database
SHOW tables;
# 2 Retrieve all the data from the tables actor, film and customer
SELECT *
FROM actor, film, customer;
# 3.1 Retrieve all the data from the tables actor, film and customer
SELECT title
FROM film;
# 3.2  List of languages used in films, with the column aliased as language from the language table
SELECT name AS 'Language'
FROM language;

# 3.3 List of first names of all employees from the staff table
SELECT first_name AS 'First names'
FROM staff;

# 4 Retrieve unique release years
SELECT DISTINCT release_year AS 'Releaseyears'
FROM film;

# 5.1 Determine the number of stores that the company has
SELECT COUNT(store_id)
FROM store;

# 5.2 Determine the number of employees that the company has
SELECT COUNT(staff_id)
FROM staff;

# 5.3 Determine how many films are available for rent and how many have been rented
SELECT COUNT(rental_duration) AS 'Number of films for rent'
FROM film;

# 5.4 Determine the number of distinct last names of the actors in the database.
SELECT  COUNT(DISTINCT last_name) AS 'Total num of last names'
FROM actor;

# 6 Retrieve the 10 longest films
SELECT film_id, title, length
FROM film
ORDER BY length DESC
LIMIT 10;

# 7.1 Retrieve all actors with the first name "SCARLETT"
SELECT first_name, last_name
FROM actor
WHERE first_name = "Scarlett";

# 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes
SELECT title, length
FROM film
WHERE title LIKE'%Armageddon%'
GROUP BY title, length
HAVING length > 100;






