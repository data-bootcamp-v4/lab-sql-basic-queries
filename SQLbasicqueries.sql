#CHALLENGE 1---------

USE sakila;

#2

SELECT 
    *
FROM
    actor;

SELECT 
    *
FROM
    film;
    
SELECT 
    *
FROM
    customer;
    
#3
#3.1 Titles of all films from the film table

SELECT DISTINCT
    title
FROM
    FILM;
    
#3.2 List of languages used in films, with the column aliased as language from the language table

SELECT 
    name AS languages
FROM
    language;
    
#3.3  List of first names of all employees from the staff table

SELECT 
    first_name
FROM
    staff
LIMIT 10;

#4 Retrieve unique release years

SELECT DISTINCT
    release_year
FROM
    film;
    
#5
#5.1 Determine the number of stores that the company has.

SELECT 
    COUNT(store_id)
FROM
    store;
    
#5.2 Determine the number of employees that the company has.

SELECT
	COUNT(staff_id)
FROM
	staff;

#5.3 Determine how many films are available for rent and how many have been rented.

SELECT 
    *
FROM
    rental;

SELECT 
    COUNT(rental_id) AS available_films,
    COUNT(CASE WHEN return_date IS NULL THEN 1 END) AS rented_films
FROM
    rental;

#5.4 Determine the number of distinct last names of the actors in the database.

SELECT DISTINCT
    COUNT(last_name) AS number_lastname
FROM
    actor;

#6 Retrieve the 10 longest films.

SELECT 
	*
FROM
	film;

SELECT 
	length
FROM 
	film
ORDER BY
	length desc
LIMIT 10;

#7 Use filtering techniques in order to:
#7.1

SELECT 
    *
FROM
    actor
WHERE
    first_name = 'SCARLETT';