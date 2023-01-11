USE instagram_db;

-- Real world (Question/Task): What are the top 5 most commonly used hashtags?

SELECT * FROM tags;

SELECT tag_name, COUNT(*) AS tag_used FROM photo_tags
JOIN tags ON  tag_id = tags.id
GROUP BY tag_id
ORDER BY tag_used DESC
LIMIT 5;

