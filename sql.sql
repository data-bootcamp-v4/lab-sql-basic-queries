# 1)
USE sakila;
SHOW TABLES;

#2)
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

#3..1 Titles of all films from the film table
#3.2 List of languages languageused in films, with the column aliased as language from the language table
#3.3 List of first names of all employees from staffthe staff tab

SELECT title FROM film;
SELECT name FROM language AS List_of_languages ;
SELECT first_name FROM staff;


#4)Retrieve unique release years.
SELECT distinct release_year FROM film;

#5)Counting records for database insights:
#5.1 Determine the number of stores that the company has.
#5.2 Determine the number of employees that the company has.
#5.3 Determine how many films are available for rent and how many have been rented.
#5.4 Determine the number of distinct last names of the actors in the database.

SELECT COUNT(store_id) FROM store;
SELECT COUNT(staff_id) FROM staff;
SELECT COUNT(film_id) FROM film;
SELECT COUNT( distinct last_name) FROM actor;



#6) Retrieve the 10 longest films.
SELECT title FROM film
ORDER BY length DESC
LIMIT  10;#


#7)Actriss with name of Scarlet
SELECT first_name, last_name FROM actor
WHERE first_name LIKE 'Scarlet%';

#BONUSS :)
#7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT title FROM film
WHERE title LIKE '%armageddon%' AND length>100;


#7.3) Determine the number of films that include Behind the Scene
SELECT count(film_id) FROM film
WHERE special_features LIKE '%behind the scenes%'






