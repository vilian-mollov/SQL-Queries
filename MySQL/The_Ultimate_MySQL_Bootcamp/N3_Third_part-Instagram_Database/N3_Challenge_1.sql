USE instagram_db;

-- Real world (Question/Task): Find the 5 oldest users.
-- We want to reward our users who have been around the longest. 

SELECT * FROM users
ORDER BY created_at
LIMIT 5;

