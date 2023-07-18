/*1.*/
SHOW tables;
/*2*/ 
SELECT *
From sakila.actor, sakila.film, sakila.customer;

/*3.1*/
SELECT title
FROM sakila.film;

/*3.2*/
SELECT name as language
FROM `sakila`.`language`;

/*3.3*/
SELECT first_name
FROM staff;

/*4*/
SELECT DISTINCT release_year
FROM sakila.film;

/*5.1*/
SELECT COUNT(STORE_ID)
FROM SAKILA.STORE;

/*5.2*/
SELECT COUNT(STAFF_ID)
FROM SAKILA.STAFF;

/*5.3*/
SELECT COUNT(DISTINCT inventory_id) as stock FROM SAKILA.INVENTORY;
SELECT COUNT(DISTINCT inventory_id) as rented FROM SAKILA.RENTAL;
/*There is only one avaliabe film avaliable to rent*/

/*5.4*/
SELECT COUNT(DISTINCT last_name) 
FROM sakila.actor;

/*6*/
SELECT title
FROM sakila.film
ORDER BY length DESC
LIMIT 5;

/*7.1*/
SELECT first_name, Last_name
FROM sakila.actor
WHERE first_name LIKE "%scarlett%";

/*7.2*/
SELECT title, length
FROM sakila.film 
WHERE Title LIKE "%ARMAGEDDON%"
AND length >= 100;




