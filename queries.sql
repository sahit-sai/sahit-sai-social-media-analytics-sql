SELECT name, COUNT(post_id) AS total_posts
FROM Posts p
JOIN Users u ON p.user_id = u.user_id
GROUP BY name;

SELECT name, SUM(total_likes + total_comments) AS engagement_score
FROM Post_Engagement
GROUP BY name
ORDER BY engagement_score DESC;

SELECT post_id, total_likes + total_comments AS total_engagement
FROM Post_Engagement
ORDER BY total_engagement DESC
LIMIT 5;
