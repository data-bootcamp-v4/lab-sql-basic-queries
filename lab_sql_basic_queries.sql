# 1. Show all tables
SELECT table_name
FROM information_schema.tables
WHERE table_type='BASE TABLE' AND table_schema = 'sakila';

# 2. Retrieve all the data from tables actor, film and customer
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

/* 
3. Retrieve the following columns from their respective tables:
    3.1 Titles of all films from the film table
    3.2. List of languages used in films, with the column aliased as language from the language table
    3.3 List of first names of all employees from the staff table
*/

SELECT title FROM sakila.film;
SELECT name AS language FROM sakila.language;
SELECT first_name FROM sakila.staff;

# 4. Retrieve unique release years.
SELECT DISTINCT release_year FROM sakila.film;

/* 
5. Counting records for database insights:
    5.1 Determine the number of stores that the company has.
    5.2 Determine the number of employees that the company has.
    5.3 Determine how many films are available for rent and how many have been rented.
    5.4 Determine the number of distinct last names of the actors in the database.
*/
SELECT COUNT(store_id) AS tot_number_stores FROM sakila.store;
SELECT COUNT(staff_id) AS tot_number_employees FROM sakila.staff;
SELECT COUNT(inventory_id) AS available FROM sakila.rental WHERE rental.last_update >= rental.return_date;
SELECT COUNT(inventory_id) AS rented FROM sakila.rental WHERE rental.last_update < rental.return_date;
SELECT COUNT(DISTINCT last_name) AS total_unique_lname FROM sakila.actor;

# 6. Retrieve the 10 longest films.
SELECT title, length FROM sakila.film ORDER BY length DESC LIMIT 10;

/* 
7. Use filtering techniques in order to:
    7.1 Retrieve all actors with the first name "SCARLETT".
    7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
        Hint: use LIKE operator. More information here.
    7.3 Determine the number of films that include Behind the Scenes content
*/
SELECT * FROM sakila.actor WHERE actor.first_name = 'Scarlett';
SELECT COUNT(*) AS result FROM sakila.film WHERE film.title LIKE '%Armageddon%' AND film.length >= 100;
SELECT COUNT(*) FROM sakila.film WHERE film.special_features LIKE '%Behind the Scenes%';