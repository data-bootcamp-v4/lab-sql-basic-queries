# Challenge 1
SELECT * FROM film, film_category, category, film_actor, actor, 
    inventory, store, address, city, country, customer, payment, rental, staff, language;
    
# Challenge 2
SELECT * FROM actor, film, customer;

#Challenge 3.1
SELECT title FROM film;

# Challenge 3.2
SELECT name FROM language;

# Challenge 3.3 
SELECT first_name FROM staff;

# Challenge 4
SELECT release_year FROM film
GROUP BY release_year;

# Challenge 5.1 
SELECT COUNT(store_id) FROM store;

# Challenge 5.2.
SELECT COUNT(staff_id) FROM staff;

# Challenge 5.3
SELECT COUNT(inventory_id) - COUNT(return_date) as "Available films" FROM rental;

# Challenge 5.4
SELECT DISTINCT COUNT(last_name) FROM actor;

# Challenge 6
SELECT title, length FROM film
ORDER BY length desc
LIMIT 10;

# Challenge 7
SELECT first_name, last_name FROM actor
WHERE first_name = "SCARLETT";

# Challenge 7.2
SELECT title, length FROM film
WHERE title  like "%Armageddon%" and length > 100;

# Challenge 7.3
SELECT COUNT(film_ID) FROM film
WHERE special_features = "Behind the scenes";






