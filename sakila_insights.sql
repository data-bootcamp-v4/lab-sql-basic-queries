USE sakila;

# 1.Displaying and seeing data in all the sakila database tables
SHOW TABLES;

# 2.Retrieve all the data from the tables actor, film and customer.
select * from actor limit 10;
select * from film limit 10;
select * from customer limit 10;

# 3.Retrieve the following columns from their respective tables:
# 3.1 Titles of all films from the film table
# 3.2 List of languages used in films, with the column aliased as language from the language table
# 3.3 List of first names of all employees from the staff table

select title as titles_of_all_films from film;
select name as language from language;
select first_name from staff;

# 4.Retrieve unique release years.
select * from film;
select distinct release_year from film;

# 5. Counting records for database insights:
# 5.1 Determine the number of stores that the company has.
select count(*) as number_of_stores from store;

# 5.2 Determine the number of employees that the company has.
select count(*) as number_of_emp from staff;

# 5.3 Determine how many films are available for rent and how many have been rented.
select count(*) AS total_available_for_rent from inventory;

# 5.4 Determine the number of distinct last names of the actors in the database.
select distinct last_name from actor;

# 6.Retrieve the 10 longest films.
select title as film_name, length from film order by length desc limit 10;

# Use filtering techniques in order to:
# 7.1 Retrieve all actors with the first name "SCARLETT".
select * from actor;
select concat(first_name, " " ,last_name) as actor_name from actor where first_name = "SCARLETT";

# 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
select * from film;
select * from film where title like ('%ARMAGEDDON%') and length > 100;

# 7.3 Determine the number of films that include Behind the Scenes content
select * from film where special_features like ('%Behind the Scenes%');
