USE many_to_many_exercise;

SELECT title, ROUND(AVG(rating),1) AS avg_rating FROM series
JOIN reviews ON series_id = series.id
GROUP BY title
ORDER BY 2;

SELECT title, ROUND(AVG(rating), 1) AS avg_rating, COUNT(*) AS numb_of_ratings FROM series
JOIN reviews ON series_id = series.id
GROUP BY title
ORDER BY 2;

