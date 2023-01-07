USE `many_to_many_exercise`;


-- Select first/last name of reviewers, then the count of reviews they have made, 
-- then the mininum rating they have gived and the maximum and the average of their ratings
-- at last the active/inactive - status if reviewer is ever made a review 
SELECT 
	first_name, 
	last_name, 
	COUNT(reviewer_id) AS COUNT, 
	IFNULL(MIN(rating),0) AS MIN, 
	IFNULL(MAX(rating),0) AS MAX, 
	IFNULL(ROUND(AVG(rating),1),0) AS AVG,  
CASE 
WHEN COUNT(reviewer_id) > 0 THEN 'ACTIVE' 
	ELSE 'INACTIVE' 
END AS `STATUS` 
		FROM reviewers 
LEFT JOIN reviews ON reviewer_id = reviewers.id 
GROUP BY reviews.reviewer_id 
ORDER BY COUNT DESC; 
