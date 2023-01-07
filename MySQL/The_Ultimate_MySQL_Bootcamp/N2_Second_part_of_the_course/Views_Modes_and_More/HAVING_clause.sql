USE `many_to_many_exercise`;

-- creating a view to work with
CREATE OR REPLACE VIEW full_reviews AS 
SELECT title, released_year, genre, rating, first_name, last_name FROM reviewers 
JOIN reviews ON reviews.reviewer_id = reviewers.id 
JOIN series ON reviews.series_id = series.id;


-- HAVING where count of ratings is more than 2
SELECT 
	title, 
	ROUND(AVG(rating),1) 
FROM full_reviews
GROUP BY title HAVING COUNT(rating) > 2;

-- HAVING where average rating is greater than 8.5
SELECT 
	title, 
	ROUND(AVG(rating),1) 
FROM full_reviews
GROUP BY title HAVING ROUND(AVG(rating),1) > 8.5
ORDER BY 2 DESC;
