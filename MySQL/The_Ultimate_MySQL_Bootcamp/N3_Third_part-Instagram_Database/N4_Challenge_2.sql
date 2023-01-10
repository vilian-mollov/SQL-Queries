USE instagram_db;

-- Real world (Question/Task): What day of the week do most users register on?
-- We need to figure out when to schedule an ad campaign!

SELECT DAYNAME(created_at) AS day, COUNT(*) AS registered_users FROM users
GROUP BY day
ORDER BY registered_users DESC;

