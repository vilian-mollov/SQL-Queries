USE instagram_db;

-- Real world (Question/Task): WHO WON??!
-- We're running a new contest to see who 
-- can get the most likes on a single photo.

SELECT username, image_url, count(*) AS likes FROM photos
JOIN likes ON likes.photo_id = photos.id
JOIN users ON users.id = photos.user_id
GROUP BY photos.image_url
ORDER BY likes DESC
LIMIT 50;



