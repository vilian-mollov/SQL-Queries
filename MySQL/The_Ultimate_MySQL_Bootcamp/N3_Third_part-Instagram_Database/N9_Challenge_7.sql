USE instagram_db;

-- We have small problem with bots on our site...
-- Real world (Question/Task): Find users who have liked every single photo on the site.

SELECT 
	username,
	COUNT(*) AS num_likes
FROM users
	JOIN likes ON likes.user_id = users.id
	GROUP BY users.id
    HAVING num_likes = (SELECT COUNT(*) FROM photos);


