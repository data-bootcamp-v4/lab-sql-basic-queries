USE sakila;

#1.Display all available tables in the Sakila database.
SELECT * FROM sakila.actor;
SELECT * FROM sakila.address;
SELECT * FROM sakila.category;
SELECT * FROM sakila.city;
SELECT * FROM sakila.country;
SELECT * FROM sakila.customer;
SELECT * FROM sakila.film;
SELECT * FROM sakila.film_actor;
SELECT * FROM sakila.film_category;
SELECT * FROM sakila.film_text;
SELECT * FROM sakila.inventory;
SELECT * FROM sakila.language;
SELECT * FROM sakila.payment;
SELECT * FROM sakila.rental;
SELECT * FROM sakila.staff;
SELECT * FROM sakila.store;
#2.Retrieve all the data from the tables actor, film and customer.
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;
#Retrieve the following columns from their respective tables:

#3.1 Titles of all films from the film table
SELECT title FROM sakila.film;
#3.2 List of languages used in films, with the column aliased as language from the language table
SELECT * FROM sakila.language;
SELECT `name` AS language FROM sakila.language;
#3.3 List of first names of all employees from the staff table
SELECT * FROM sakila.staff;
SELECT first_name FROM sakila.staff;

#4.Retrieve unique release years.
SELECT * FROM sakila.film;
SELECT DISTINCT release_year FROM sakila.film; 

#5.Counting records for database insights:

#5.1 Determine the number of stores that the company has.
SELECT * FROM sakila.store;
SELECT COUNT(store_id) FROM sakila.store;
#5.2 Determine the number of employees that the company has.
SELECT * FROM sakila.staff;
SELECT COUNT(staff_id) FROM sakila.staff;
#5.3 Determine how many films are available for rent and how many have been rented.
SELECT * FROM sakila.rental;
SELECT COUNT(rental_date) as films_rented, COUNT(inventory_id) AS films_available FROM sakila.rental;
#5.4 Determine the number of distinct last names of the actors in the database.
SELECT * FROM sakila.actor;
SELECT COUNT(DISTINCT(last_name)) AS dist_count_name FROM sakila.actor;

#6.Retrieve the 10 longest films.
SELECT * FROM sakila.film;
SELECT title, length FROM sakila.film
ORDER BY length DESC 
LIMIT 10;

#7.Use filtering techniques in order to:

#7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM sakila.actor;
SELECT * FROM sakila.actor
WHERE first_name="SCARLETT";

#BONUS:

#7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM sakila.film;
SELECT * FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%' AND length<=100;

#7.3 Determine the number of films that include Behind the Scenes content
SELECT * FROM sakila.film;
SELECT COUNT(film_id) AS num_films_bs FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%';














