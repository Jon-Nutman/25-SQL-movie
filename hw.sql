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

-- question 12 -- 

SELECT m.title, r.rating
FROM movies m
JOIN ratings r ON m.id = r.movie_id
WHERE title='Godfather, The (1972)';

-- question 13 -- 

SELECT m.title, r.rating
FROM movies m
JOIN ratings r ON m.id = r.movie_id
WHERE title='Godfather, The (1972)'
ORDER BY r.timestamp DESC;

-- question 14 -- 

SELECT l.imdb_id, m.title
FROM links l
LEFT JOIN movies m ON m.id = l.movie_id
WHERE title LIKE '%(2005)'
AND genres LIKE '%Comedy%';

-- question 15 --
SELECT * FROM movies
JOIN ratings r ON movies.id = r.movie_id
WHERE rating IS NULL;

-- question 16 --

SELECT AVG(rating) FROM ratings
WHERE movie_id=1;

-- question 17 --

SELECT COUNT(rating) FROM ratings
WHERE movie_id=1;

-- question 18 --

SELECT COUNT(id) FROM movies
WHERE genres LIKE '%Comedy%';

-- question 19 --

SELECT AVG(rating) FROM ratings
WHERE user_id=1;

-- question 20 --
SELECT user_id, COUNT(user_id) FROM ratings
GROUP BY user_id
ORDER BY COUNT(user_id) DESC;


-- question 21 --

SELECT AVG(rating) FROM ratings
GROUP BY user_id
ORDER BY user_id DESC;


-- question 22 -- 

SELECT user_id, COUNT(user_id), AVG(rating) FROM ratings
GROUP BY user_id
ORDER BY COUNT(user_id):

-- question 23 -- 
SELECT user_id, COUNT(user_id), AVG(rating) FROM ratings
GROUP BY user_id
HAVING COUNT(user_id)>50
ORDER BY AVG(rating) DESC ;


-- question 24 -- 

SELECT AVG(rating) FROM ratings
GROUP BY movie_id
HAVING AVG(rating) > 4;

