-- Active: 1663671139270@@127.0.0.1@3306@LABBTWO
--All movies that are not named 'Shawshank Redemption'
SELECT * 
FROM movie 
WHERE movie_title != 'The Shawshank Redemption';

--All reservations that are in between 2022-10-20 and 2022-11-01
SELECT * 
FROM reservation 
WHERE final_want_date BETWEEN '2022-10-20' AND '2022-11-01';

--all movies that starts with 'the' and ends with 't' ordered by runtime in descending order
SELECT * 
FROM movie 
WHERE movie_title LIKE 'The%t' 
ORDER BY movie_runtime DESC;

--number of movies more than one, that are in each category, ordered by count in descending order and the average runtime of each category
SELECT movie_category, COUNT(movie_nr) AS movie_count, ROUND(AVG(movie_runtime)) AS avg_runtime 
FROM movie 
GROUP BY movie_category 
HAVING COUNT(movie_nr) > 1 
ORDER BY COUNT(movie_category) DESC;



--list the stores with the most expensive movies
SELECT * 
FROM store 
WHERE 