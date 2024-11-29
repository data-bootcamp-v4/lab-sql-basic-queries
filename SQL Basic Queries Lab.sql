# 1. Display all available tables in the Sakila database.
SHOW TABLES;

# 2. Retrieve all the data from the tables actor, film and customer.

select *
from actor;

select *
from film;

select *
from customer;

# 3. Retrieve the following columns from their respective tables:
		# 3.1 Titles of all films from the film table
USE sakila;		

SELECT title
FROM film;
        
        # 3.2 List of languages used in films, with the column aliased as language from the language table
		
SELECT name as language
FROM language;

        # 3.3 List of first names of all employees from the staff table

SELECT first_name
FROM staff;

# 4. Retrieve unique release years.

SELECT DISTINCT(release_year)
FROM film;

# 5. Counting records for database insights:
		# 5.1 Determine the number of stores that the company has.
        
SELECT COUNT(DISTINCT(store_id))
FROM store;

		# 5.2 Determine the number of employees that the company has.
        
SELECT COUNT(DISTINCT(staff_id))
FROM staff;
        
		# 5.3 Determine how many films are available for rent and how many have been rented.
        
SELECT count(distinct(film_id)) as `films available`, 1000 - count(distinct(film_id)) as `films not available`
FROM inventory;
        
		# 5.4 Determine the number of distinct last names of the actors in the database.
        
SELECT count(distinct(last_name))
from actor;

# 6. Retrieve the 10 longest films.

SELECT title as  `film name`, length as `film length`
from film
order by length desc
limit 10;

# 7. Use filtering techniques in order to:
		# 7.1 Retrieve all actors with the first name "SCARLETT".

SELECT first_name as `First Name`, last_name as `Last Name`
from actor
where first_name = 'Scarlett';

# BONUS:
		# 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
		# Hint: use LIKE operator. More information here.
        
SELECT title as `Film`, length as `Duration`
from film
where title like '%ARMAGEDDON%' and length > 100;
        
		# 7.3 Determine the number of films that include Behind the Scenes content

SELECT count(title)
from film
where special_features like '%Behind the Scenes%'