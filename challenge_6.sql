-- Longest films

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;