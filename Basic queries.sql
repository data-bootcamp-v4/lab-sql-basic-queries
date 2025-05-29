USE sakila;

#1
	SHOW TABLES;

#2
	SELECT * FROM actor;
	SELECT * FROM film;
	SELECT * FROM customer;

#3
	#3.1
		SELECT title FROM film;
    #3.2
		SELECT f.title as film, l.name as language FROM film f
        JOIN language l ON l.language_id = f.language_id;
   #3.3
		SELECT first_name FROM staff;
        
#4
	SELECT DISTINCT release_year FROM film;
    
#5
	#5.1
		SELECT COUNT(store_id) FROM store;
    #5.2
		SELECT COUNT(staff_id) FROM staff;
    #5.3
		SELECT COUNT(DISTINCT film_id) FROM inventory;
        SELECT COUNT(DISTINCT i.film_id) as 'Films already rented' FROM rental r JOIN inventory i ON i.inventory_id = r.inventory_id;
    #5.4
		SELECT COUNT(DISTINCT last_name) FROM actor;

#6
	SELECT * FROM film ORDER BY length DESC LIMIT 10;
    
#7
	#7.1
		SELECT * FROM actor WHERE first_name = 'SCARLETT';
	#7.2
		SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
    #7.3
		SELECT * FROM film WHERE special_features LIKE '%Behind the Scenes%';