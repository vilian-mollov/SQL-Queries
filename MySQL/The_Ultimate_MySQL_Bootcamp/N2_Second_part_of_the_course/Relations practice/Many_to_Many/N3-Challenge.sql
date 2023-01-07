USE many_to_many_exercise;

-- select every review that e reviewes have made
SELECT first_name, last_name, rating FROM reviewers
JOIN reviews ON reviews.reviewer_id = reviewers.id;

-- Select only the series that has no reviews. Using LEFT JOIN
SELECT title AS unreviewed_series FROM series
LEFT JOIN reviews ON series_id = series.id
WHERE series_id IS NULL;

-- Using RIGHT JOIN
SELECT title AS unreviewed_series FROM reviews
RIGHT JOIN series ON series_id = series.id
WHERE series_id IS NULL;
