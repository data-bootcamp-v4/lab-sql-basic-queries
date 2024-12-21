USE sakila;
SHOW TABLES;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;


SELECT title from film; #Titles of all films from the film table
SELECT name AS language FROM language;
SELECT first_name AS language FROM staff; #List of first names of all employees from the staff table
SELECT DISTINCT release_year FROM film; #Retrieve unique release years.
#5.1 Determine the number of stores that the company has.
SHOW TABLES;
SELECT * FROM sales_by_store;
SELECT DISTINCT store FROM sales_by_store;

#5.2 Determine the number of employees that the company has.
SHOW TABLES;
SELECT * FROM staff_list;
SELECT DISTINCT COUNT(name) AS "Number of employees" from staff_list;
#5.3 Determine how many films are available for rent and how many have been rented.
SHOW TABLES;
SELECT DISTINCT COUNT(film_id) AS "Available_films" from  inventory;
SELECT COUNT(*) AS total_rentals
FROM rental;
#5.4 Determine the number of distinct last names of the actors in the database.
SHOW TABLES;
SELECT * FROM actor_info;
SELECT DISTINCT COUNT(last_name) AS "actors_lastname_number" from actor_info;
#6. Retrieve the 10 longest films.
SELECT *
FROM film
ORDER BY length DESC
LIMIT 10;

#7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor_info WHERE first_name = 'Scarlett';
#Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
#7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';


















