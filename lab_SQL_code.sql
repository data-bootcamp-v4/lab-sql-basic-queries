USE sakila;
#Display all available tables in the Sakila database.
SHOW FULL TABLES;

#Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

#Retrieve the following columns from their respective tables
#3.1 Titles of all films from the film table
SELECT DISTINCT title FROM film;

#3.1 Titles of all films from the film table
SELECT DISTINCT title FROM film;

#3.2 List of languages used in films, with the column aliased as language from the language table
SELECT DISTINCT name as language FROM language;

#3.3 List of first names of all employees from the staff table
SELECT DISTINCT CONCAT(last_name,' ',first_name) AS Full_name FROM staff;

#Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

#Counting records for database insights:
    #5.1 Determine the number of stores that the company has.
    SELECT COUNT(DISTINCT store_id) FROM customer;

    #5.2 Determine the number of employees that the company has.
    SELECT COUNT(DISTINCT staff_id) FROM staff;
    
    #5.3 Determine how many films are available for rent and how many have been rented.
    
    
    #5.4 Determine the number of distinct last names of the actors in the database.
    SELECT COUNT(DISTINCT last_name) FROM actor;
    
#Retrieve the 10 longest films.
SELECT title, film.length
	FROM film
	ORDER BY film.length ASC
	LIMIT 10;
    
#Use filtering techniques in order to:
#7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor
	WHERE first_name = "SCARLETT";
    
#7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM film
	WHERE title LIKE '%ARMAGEDDON%' and length > 100;
    
#7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(DISTINCT film_id) FROM film
    WHERE special_features LIKE '%Behind the Scenes%';
    
