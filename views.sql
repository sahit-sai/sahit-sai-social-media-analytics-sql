CREATE VIEW Post_Engagement AS
SELECT p.post_id, u.name, COUNT(DISTINCT l.like_id) AS total_likes, COUNT(DISTINCT c.comment_id) AS total_comments
FROM Posts p
JOIN Users u ON p.user_id = u.user_id
LEFT JOIN Likes l ON p.post_id = l.post_id
LEFT JOIN Comments c ON p.post_id = c.post_id
GROUP BY p.post_id, u.name;
