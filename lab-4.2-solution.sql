-- 1. Display all available tables in the Sakila database.
USE sakila;
SHOW TABLES;

-- 2. Retrieve all the data from the tables `actor`, `film` and `customer`.
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer; 

-- 3. Retrieve the following columns from their respective tables:
-- 	- 3.1 Titles of all films from the `film` table
SELECT sf.title from sakila.film as sf;

-- 	- 3.2 List of languages used in films, with the column aliased as `language` from the `language` table
SELECT DISTINCT sl.name as language 
FROM sakila.language as sl;
-- > English, Italian, Japanese, Mandarin, French, German

-- 	- 3.3 List of first names of all employees from the `staff` table
SELECT ss.first_name
FROM sakila.staff as ss;
-- > Mike, Jon

-- 4. Retrieve unique release years.
SELECT DISTINCT sf.release_year
FROM sakila.film as sf;
-- > 2006

-- 5. Counting records for database insights:
-- 	- 5.1 Determine the number of stores that the company has.
SELECT COUNT(ss.store_id)
FROM sakila.store as ss;
-- > 2

-- 	- 5.2 Determine the number of employees that the company has.
SELECT COUNT(ss.staff_id)
FROM sakila.staff as ss;
-- > 2

-- 	- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(DISTINCT si.film_id) as films, COUNT(DISTINCT si.inventory_id) as copies 
from sakila.inventory as si;
-- > 4581 copies of 958 different films

-- 	- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT sa.first_name)
FROM sakila.actor as sa;
-- > 128 distinct names

-- 6. Retrieve the 10 longest films.
SELECT *
FROM sakila.film as sf
ORDER BY sf.length desc
LIMIT 10;

-- 7.  Use filtering techniques in order to:

-- 	- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM sakila.actor as sa
WHERE sa.first_name = 'SCARLETT';

-- BONUS: 
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
-- *Hint: use `LIKE` operator. [More information here.](https://www.w3schools.com/sql/sql_like.asp)* 
SELECT * FROM sakila.film as sf
WHERE (sf.title LIKE '%ARMAGEDDON%' and length >100);

-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(DISTINCT film_id) 
FROM sakila.film as sf
WHERE sf.special_features LIKE '%Scenes%'
-- > 794 
