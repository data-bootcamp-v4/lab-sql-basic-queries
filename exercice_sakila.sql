-- 1. Display all available tables in Sakila database

SHOW TABLES FROM sakila; 

-- 2. Retrieve all the data from the tables actor, film and customer

-- 2.1 actor 

SELECT * FROM actor;

-- 2.2 Film 

SELECT * FROM film; 

-- 2.3 customer

SELECT * FROM customer; 

-- 3. Retrieve the following colums from their respective tables 

-- 3.1 Titles from the film

SELECT title FROM film;

-- 3.2 list of languages from language table

SELECT  name as language FROM language; 

-- 3.3 names of all employees from the staff

SELECT first_name FROM staff;


-- 4. Retrieve unique release years 

SELECT distinct release_year FROM film;

-- 5. Counting records for database insights:

-- 5.1 Determine the number of stores that the company has

SELECT count(*) AS store_count FROM store; 

-- 5.2 Determine the number of employees that the company has

SELECT count(*) AS employees_count FROM staff; 

-- 5.3 Determine how many films are available for rent and how many have been rented 

-- available for rent 
SELECT count(*) as avaliable_for_rent  FROM inventory; 

-- how many have been rented 

SELECT count( distinct inventory_id) as rented_films FROM rental; 

-- 5.4 determine the number of distint last names of the actors in the database

SELECT count(distinct last_name) as distint_last_names_count from actor; 

-- 6. Retrive the 10 longest films. 

SELECT title, length FROM film ORDER BY length DESC LIMIT 10; 

-- 7. Use filtering techniques in order to 

-- 7.1 Retrieve all actors with the first name "SCARLETT"

SELECT * FROM actor WHERE first_name = 'SCARLETT'; 

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100; 

-- 7.3 Determine the number of films that include Behind the Scenes content 

SELECT count(*) as behind_scenes_content FROM film WHERE special_features LIKE '%Behind the Scenes%'; 