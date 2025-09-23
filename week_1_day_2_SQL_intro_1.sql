USE sakila;

----- 2 GET ALL DATA FROM TABLE (actor, film and customer)
SELECT * FROM actor; 
SELECT * FROM film; 
SELECT * FROM customer; 

----- 3 GET FILM TITLES,
SELECT title from film;

----- 4 GETTING A UNIQUE LIST OF FILM LANGUGES

SELECT DISTINCT name AS language FROM language;

--- answer English, Italian, Japanese, Mandarin, French and Germany

----- 5.1 fINDING HOW MANY STORES THE COMPANY HAS
SELECT COUNT(*) AS store_count from Store;

-- answer = 2 stores

----- 5.2 Find out how many employees the company has

SELECT COUNT(*) AS employee_count FROM staff;

----- answer = 2 

----------- 5.3 Return a list of employee first names only:

SELECT first_name FROM staff;

-------------- ANSWER = MIKE JON
