-- Selecionar o banco que queremos 
USE sakila;
SELECT DATABASE();

-- 1.Exibir todas as tabelas disponíveis no banco de dados Sakila.
SHOW TABLES;

-- 2.Recuperar todos os dados das tabelas actor, filme customer.
SELECT *
FROM actor;
SELECT *
FROM film;
SELECT *
FROM customer;

-- 3.Recuperar as seguintes colunas de suas respectivas tabelas:
-- 3.1 Títulos de todos os filmes do filmmesa
SELECT title
FROM film;
-- 3.2 Lista de idiomas utilizados em filmes, com a coluna aliased como languagedo languagemesa
SELECT name AS language
FROM language;
-- 3.3 Lista de primeiros nomes de todos os funcionários do staffmesa
SELECT first_name
FROM staff;

-- 4.Recupere anos de lançamento únicos.
SELECT DISTINCT release_year
FROM film;

-- 5.Contando registros para insights de banco de dados:
-- 5.1 Determine o número de lojas que a empresa possui.
SELECT COUNT(*) AS total_stores
FROM store;
-- 5.2 Determinar o número de funcionários que a empresa possui.
SELECT COUNT(*) AS total_employees
FROM staff;
-- 5.3 Determinar quantos filmes estão disponíveis para alugar e quantos foram alugados.
SELECT COUNT(DISTINCT film_id) AS films_available
FROM inventory;
SELECT COUNT(DISTINCT i.film_id) AS films_rented
FROM inventory i
INNER JOIN rental r
ON i.inventory_id = r.inventory_id;

-- 5.4 Determinar o número de sobrenomes distintos dos atores da base de dados.
SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

-- 6. Recupere os 10 filmes mais longos.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.Use técnicas de filtragem para:
-- 7.1 Recuperar todos os atores com o primeiro nome "SCARLETT".
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 Recuperar todos os filmes que tenham ARMAGEDDON em seu título e tenham duração superior a 100 minutos.
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;

-- 7.3 Determine o número de filmes que incluem conteúdo de Bastidores
SELECT COUNT(*) AS films_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

