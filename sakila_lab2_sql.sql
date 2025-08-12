# 1.Display all available tables in the Sakila database.
SELECT table_name
FROM information_schema.tables
WHERE table_type='BASE TABLE'
      AND table_schema = 'sakila';
      
# 2.Retrieve all the data from the tables actor, film and customer.

# 2.1 -> All tables together
select * from actor, film, customer;

# 2.2 -> Tables separated
select * from actor;
select * from film;
select * from customer;

# 3.Retrieve the following columns from their respective tables:

# 3.1 -> Titles of all films from the film table:
select title from sakila.film;

# 3.2 List of languages used in films, with the column aliased as language from the language table:
select name AS language from sakila.language;

# 3.3 List of first names of all employees from the staff table:
select first_name from sakila.staff;

# 4.Retrieve unique release years:

select distinct release_year from sakila.film;

# 5.Counting records for database insights:

# 5.1 Determine the number of stores that the company has:
select count(store_id) from sakila.store;

# 5.2 Determine the number of employees that the company has:
select count(staff_id) from sakila.staff;

# 5.3 Determine how many films are available for rent and how many have been rented:
select count(inventory_id) from sakila.rental;

# 5.4 Determine the number of distinct last names of the actors in the database:
select distinct last_name from sakila.actor;

# 6.Retrieve the 10 longest films.
select * from sakila.film
order by length desc
limit 10;

# 7.Use filtering techniques in order to:

# 7.1 Retrieve all actors with the first name "SCARLETT":
select * from sakila.actor
where first_name = 'SCARLETT';

#	BONUS:
# 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes:
select title, length from sakila.film
where title like 'ARMAGEDDON%';

# 7.3 Determine the number of films that include Behind the Scenes content:
select * from sakila.film
where special_features like '%Behind the Scenes%';









