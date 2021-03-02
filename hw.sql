-- question 1 --

SELECT * FROM movies;
-- question 2 --

SELECT title, id FROM movies
LIMIT 10;

-- question 3--
SELECT * FROM movies
WHERE id = 485;

-- question 4 -- 

SELECT id FROM movies
WHERE title = 'Made in America (1993)';
-- question 5 -- 

SELECT * FROM movies
ORDER BY title ASC
LIMIT 10;
-- question 6 -- 

SELECT * FROM movies
WHERE title LIKE '%(2002)';

-- question 7 --

SELECT title FROM movies
WHERE title LIKE '%Godfather%';

-- question 8 --

SELECT * FROM movies
WHERE genres LIKE '%Comedy%';

-- question 9 -- 

SELECT * FROM movies
WHERE genres LIKE '%Comedy%'
AND title LIKE '%(2000)';

-- question 10 --

SELECT * FROM movies
WHERE title LIKE '%Death%' AND genres LIKE '%Comedy%';

-- question 11 --

SELECT * FROM movies
WHERE title LIKE '%super%' 
AND (title LIKE '%(2001)' OR title LIKE '%(2002)');