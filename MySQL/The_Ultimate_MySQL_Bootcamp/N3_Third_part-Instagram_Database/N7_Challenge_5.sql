USE instagram_db;

-- Our investors want to know...
-- Real world (Question/Task): How many ties does the average user post?

-- calculate avg number of photos per user
-- total number of photos / total number of users
SELECT ((SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users)) AS avg_number_of_photos_per_user;


