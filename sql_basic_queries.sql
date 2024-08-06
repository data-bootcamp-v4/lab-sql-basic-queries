# 1. Show all the table of 

	show tables;
    
# 2. Retrieve all the data from the tables actor, film and customer.

	select * 
    from actor;
    
    select * 
    from film;
    
    select *
    from customer;
    
# 3. Retrieve the following columns from their respective tables:

	#3.1 Titles of all films from the film table
		select title 
		from film;
	#3.2 List of languages used in films, with the column aliased as language from the language table
		select language.name as language
        from language;
	#3.3 List of first names of all employees from the staff table
		select first_name
        from staff;
		
# 4. Retrieve unique release years.
		select distinct release_year
        from film;
    
# 5. Counting records for database insights:
	#5.1 Determine the number of stores that the company has.
		select count(*)
        from store;
	#5.2 Determine the number of employees that the company has.
		select count(*) 
        from store;    
	#5.3 Determine how many films are available for rent and how many have been rented.
		select count(distinct film_id) as films_available_for_rent
        from inventory;
        
        select count(distinct film_id) as films_rented
        from inventory i
        join rental r
        on r.inventory_id = i.inventory_id ;
        
        
	#5.4 Determine the number of distinct last names of the actors in the database
    
		select count(distinct last_name) as number_distinct_last_name
        from actor;
        
	#6. Retrieve the 10 longest films.
    
		select title 
        from film
        order by length desc
        limit 10;
        
	#7. Retrieve all actors with the first name "SCARLETT".
		
        select  first_name AS full_name
        from actor 
        where first_name like "SCARLETT";
        
       
