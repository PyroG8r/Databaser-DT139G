-- Active: 1663671139270@@127.0.0.1@3306@LABBTWO
--All movies that are not named 'Shawshank Redemption'
SELECT * 
FROM movie 
WHERE movie_title != 'The Shawshank Redemption';

--Result ^
--+----------+------------------------------+---------------+----------------+
--| movie_nr | movie_title                  | movie_runtime | movie_category |
--+----------+------------------------------+---------------+----------------+
--|        1 | The Godfather                |           175 | Drama          |
--|        3 | The Dark Knight              |           152 | Action         |
--|        4 | The Hateful Eight            |           168 | Western        |
--|        5 | LOTR: The Return of the King |           201 | Action         |
--+----------+------------------------------+---------------+----------------+


--All reservations that are in between 2022-10-20 and 2022-11-01
SELECT * 
FROM reservation 
WHERE final_want_date BETWEEN '2022-10-20' AND '2022-11-01';

--Result ^
--+-----------+----------+-----------------+
--| member_nr | movie_nr | final_want_date |
--+-----------+----------+-----------------+
--|         1 |        1 | 2022-10-31      |
--+-----------+----------+-----------------+


--all movies that starts with 'the' and ends with 't' ordered by runtime in descending order
SELECT * 
FROM movie 
WHERE movie_title LIKE 'The%t' 
ORDER BY movie_runtime DESC;

--Result ^
--+----------+-------------------+---------------+----------------+
--| movie_nr | movie_title       | movie_runtime | movie_category |
--+----------+-------------------+---------------+----------------+
--|        4 | The Hateful Eight |           168 | Western        |
--|        3 | The Dark Knight   |           152 | Action         |
--+----------+-------------------+---------------+----------------+


--number of movies, more than one, that are in each category, ordered by count in descending order. and the average runtime of each category
SELECT movie_category, COUNT(movie_nr) AS movie_count, ROUND(AVG(movie_runtime)) AS cat_avg_runtime 
FROM movie 
GROUP BY movie_category 
HAVING COUNT(movie_nr) > 1 
ORDER BY COUNT(movie_category) DESC;


--Result ^
--+----------------+-------------+-----------------+
--| movie_category | movie_count | cat_avg_runtime |
--+----------------+-------------+-----------------+
--| Action         |           2 |             177 |
--| Drama          |           2 |             159 |
--+----------------+-------------+-----------------+


--list the movies which runtime is greater than the avg runtime
SELECT * 
FROM movie
WHERE movie_runtime > (SELECT AVG(movie_runtime) FROM movie);

--Result ^
--+----------+------------------------------+---------------+----------------+
--| movie_nr | movie_title                  | movie_runtime | movie_category |
--+----------+------------------------------+---------------+----------------+
--|        1 | The Godfather                |           175 | Drama          |
--|        4 | The Hateful Eight            |           168 | Western        |
--|        5 | LOTR: The Return of the King |           201 | Action         |
--+----------+------------------------------+---------------+----------------+


--increase the salary of all employees with 10%
UPDATE employee
SET employee_salary = employee_salary * 1.1;



--list all FOREIGN KEYS
SELECT 
  TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME, REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME
FROM
  INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
  REFERENCED_TABLE_SCHEMA = 'LABBTWO' 
