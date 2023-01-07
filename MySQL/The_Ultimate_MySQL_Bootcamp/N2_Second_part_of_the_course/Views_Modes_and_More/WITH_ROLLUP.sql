USE `many_to_many_exercise`;

SELECT AVG(rating) FROM `full_reviews`;
-- gives at the end the average of all ratings
SELECT title, AVG(rating) AS rating FROM `full_reviews` GROUP BY title WITH ROLLUP;

-- gives at the end the count of all ratings
SELECT title, COUNT(rating) AS count_of_ratings FROM `full_reviews` GROUP BY title WITH ROLLUP;

-- average rating for every occurrence of years in the table plus the total average for all years in the table 
SELECT 
	released_year,
	AVG(rating)
FROM full_reviews
GROUP BY released_year WITH ROLLUP;


-- here we can get the average total rating for the specific year,
-- plus the average rating for the year and the genres.
-- And at the end the average for everithing in this table 
SELECT 
	released_year,
    genre,
	AVG(rating)
FROM full_reviews
GROUP BY released_year, genre WITH ROLLUP;
