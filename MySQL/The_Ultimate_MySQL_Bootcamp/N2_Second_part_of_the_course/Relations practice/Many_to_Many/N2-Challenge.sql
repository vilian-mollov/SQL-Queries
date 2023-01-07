USE many_to_many_exercise;

SELECT title, ROUND(AVG(rating),1) AS avg_rating FROM series
JOIN reviews ON series_id = series.id
GROUP BY title
ORDER BY 2;

SELECT title, ROUND(AVG(rating), 1) AS avg_rating, COUNT(*) AS numb_of_ratings FROM series
JOIN reviews ON series_id = series.id
GROUP BY title
ORDER BY 2;

-- Ordered by average rating highest to lowest limited to 10 results 
SELECT title, ROUND(AVG(rating), 1) AS avg_rating, COUNT(*) AS numb_of_ratings FROM series
JOIN reviews ON series_id = series.id
GROUP BY title
ORDER BY 2 DESC
LIMIT 10;

-- Ordered by number of ratings
SELECT title, ROUND(AVG(rating), 1) AS avg_rating, COUNT(*) AS numb_of_ratings FROM series
JOIN reviews ON series_id = series.id
GROUP BY title
ORDER BY numb_of_ratings DESC
LIMIT 10;
