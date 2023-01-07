USE `many_to_many_exercise`;

-- Using multiple JOINS
SELECT title, rating, CONCAT(first_name, ' ', last_name) AS reviewer FROM reviewers
JOIN reviews ON reviewer_id = reviewers.id
JOIN series ON series.id = series_id;


SELECT title, rating, CONCAT(first_name, ' ', last_name) AS reviewer FROM reviewers
JOIN reviews ON reviewer_id = reviewers.id
JOIN series ON series.id = series_id
ORDER BY reviewer;

SELECT title, rating, CONCAT(first_name, ' ', last_name) AS reviewer FROM reviewers
JOIN reviews ON reviewer_id = reviewers.id
JOIN series ON series.id = series_id
ORDER BY title, rating DESC;
