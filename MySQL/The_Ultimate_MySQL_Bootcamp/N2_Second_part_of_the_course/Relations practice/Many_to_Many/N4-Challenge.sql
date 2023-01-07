USE `many_to_many_exercise`;

-- Group by genre and find average rating 
SELECT genre, ROUND(AVG(rating), 2) AS avg_rating FROM series
JOIN reviews ON reviews.series_id = series.id
GROUP BY genre
ORDER BY 2 DESC;
