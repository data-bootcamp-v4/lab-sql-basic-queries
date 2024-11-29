USE sakila;

# Display all available tables in the Sakila database.
SHOW tables;
# Retrieve all the data from the tables actor, film and customer.
SELECT *
FROM actor,film,customer;
# Retrieve the following columns from their respective tables:
	# 3.1 Titles of all films from the film table
    # 3.2 List of languages used in films, with the column aliased as language from the language table
    # 3.3 List of first names of all employees from the staff table
SELECT title
FROM film;
SELECT original_language_id as language
FROM film;
SELECT first_name
FROM staff;
# Retrieve unique release years.
SELECT DISTINCT release_year
FROM film;
# Counting records for database insights:
	# 5.1 Determine the number of stores that the company has. 2
    # 5.2 Determine the number of employees that the company has. 2
    # 5.3 Determine how many films are available for rent and how many have been rented.
    # 5.4 Determine the number of distinct last names of the actors in the database.
SELECT *
FROM store;
SELECT DISTINCT COUNT(title) as total_movies_amount
FROM film;
SELECT DISTINCT COUNT(last_name) as total_last
FROM actor;
SELECT title,length
FROM film
ORDER BY length DESC
LIMIT 10;
SELECT first_name, last_name
FROM actor
WHERE first_name = "Scarlett";



