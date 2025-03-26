-- Question 1: Show tables in sakila
USE sakila;

SHOW TABLES;

-- Question 2: select data from actor, film, and customer
SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;

-- Question 3
-- 3.1
SELECT title
FROM film;
-- 3.2
SELECT `name` AS `language`
FROM `language`;
-- 3.3
SELECT first_name
FROM staff;

-- Question 4: unique release years
SELECT DISTINCT release_year
FROM film;

-- Question 5
-- 5.1
SELECT COUNT(store_id) AS number_stores
FROM store;
-- 5.2
SELECT COUNT(staff_id)
FROM staff;
-- 5.3

-- 5.4
SELECT DISTINCT last_name
FROM actor;

-- Question 6: 10 lingest films
SELECT title, SUM(length)
FROM film
GROUP BY title
ORDER BY SUM(length) DESC
LIMIT 10;

-- Question 7
-- 7.1
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';
-- 7.2
SELECT title, `length`
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND `length` > 100;
-- 7.3
SELECT COUNT(title)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
