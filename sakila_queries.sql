-- Lab 2. SQL Basic Queries  Challenge
#Use the sakila database to do the following tasks:
	USE sakila;

-- 1. Display all available tables in the Sakila database.
	SHOW FULL TABLES;

-- 2. Retrieve all the data from the tables `actor`, `film` and `customer`.
	SELECT *
	FROM actor;
    
	SELECT *
	FROM film;

	SELECT *
	FROM customer;

-- 3. Retrieve the following columns from their respective tables:
	#- 3.1 Titles of all films from the `film` table
    SELECT title as 'Film Titles'
    FROM film;
	#- 3.2 List of languages used in films, with the column aliased as `language` from the `language` table
    SELECT name as 'language'
    FROM language;
	#- 3.3 List of first names of all employees from the `staff` table
    SELECT first_name
    FROM staff;
    
    #4. Retrieve unique release years.
    SELECT DISTINCT release_year
    FROM film;
    
    #5. Counting records for database insights:
	#- 5.1 Determine the number of stores that the company has.
    SELECT COUNT(*)
    FROM store;
    
	#- 5.2 Determine the number of employees that the company has.
    SELECT COUNT(*) as 'Number of employees that the company has'
    FROM staff;
        
	#########- 5.3 Determine how many films are available for rent and how many have been rented.
    SELECT * 
    from staff_list;

	#- 5.4 Determine the number of distinct last names of the actors in the database.
    SELECT last_name, count(last_name) as 'Number of actors with the same last name'
    FROM actor
    GROUP BY last_name
    ORDER BY last_name;
    
    #6. Retrieve the 10 longest films.
    SELECT title, length
    FROM film
    ORDER BY length DESC, title
    LIMIT 10;

	#7. Use filtering techniques in order to:
	#- 7.1 Retrieve all actors with the first name "SCARLETT".
    SELECT *
    FROM actor
    WHERE first_name = 'SCARLETT'
    ORDER BY last_name;

	#BONUS: 
	#- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. 
	#*Hint: use `LIKE` operator. [More information here.](https://www.w3schools.com/sql/sql_like.asp)
    SELECT * 
    FROM film
    WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
    
	#- 7.3 Determine the number of films that include Behind the Scenes content*/
    SELECT COUNT(*) as 'Number of films that include Behind the Scenes content'
    FROM film
    WHERE special_features LIKE '%Behind the Scenes%';
    