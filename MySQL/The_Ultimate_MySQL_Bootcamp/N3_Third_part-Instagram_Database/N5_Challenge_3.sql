USE instagram_db;


-- Real world (Question/Task): Find the users who have never posted a photo.
-- We want to target out inactive users with an email campaign.


SELECT users.id, username, image_url FROM users
LEFT JOIN photos ON photos.user_id = users.id
WHERE photos.id IS NULL;

