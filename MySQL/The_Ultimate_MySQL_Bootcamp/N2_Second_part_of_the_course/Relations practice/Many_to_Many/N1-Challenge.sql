USE many_to_many_exercise;

-- selecting the titles from series and the rating from the joining table 
SELECT title, rating FROM series 
JOIN reviews ON series_id = series.id;

-- everything from the two tables
SELECT * FROM series 
JOIN reviews ON series_id = series.id;

-- First 10 most rated
SELECT title, rating FROM series 
JOIN reviews ON series_id = series.id
ORDER BY rating DESC
LIMIT 10;
