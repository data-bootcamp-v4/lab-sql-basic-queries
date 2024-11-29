#Show all tables

select * from sakila; 
show tables;

#2. Retrieve all the data from the tables `actor`, `film` and `customer`.

select * from actor, film, customer;

#Retrieve the following columns from their respective tables:
	# 3.1 Titles of all films from the film table
    
select title from film;

	# 3.2. List of languages used in films, with the column aliased as language from the language table
select * from language;
select name as "language" from language;

	# 3.3 List of first names of all employees from the staff table
    
select * from staff;
select first_name from staff;

	#4. Retrieve unique release years.
    
select * from film;
select distinct release_year from film;

	# 5.1 Determine the number of stores that the company has.
    
select * from store;
select count(store_id)from store;
    
	#5.2 Determine the number of employees that the company has.
    
select * from staff;
select count(staff_id) from staff;
    
	#5.3 Determine how many films are available for rent and how many have been rented.

select * from rental;
select count(rental_id) from rental;

	#5.4 Determine the number of distinct last names of the actors in the database.
    
select * from actor;
select count(last_name) from actor;

	#6. Retrieve the 10 longest films.
    
select * from film, order by length desc limit 10;
    
#7.  Use filtering techniques in order to:
	# 7.1 Retrieve all actors with the first name "SCARLETT".
    
select * from actor where first_name = 'SCARLETT';

	# 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. 
    
select * from film where title like '%ARMAGEDON' and length >100
    

