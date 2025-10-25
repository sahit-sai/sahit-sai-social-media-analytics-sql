INSERT INTO Users(name, email, join_date) VALUES
('Alice', 'alice@mail.com', '2023-01-10'),
('Bob', 'bob@mail.com', '2023-02-15'),
('Charlie', 'charlie@mail.com', '2023-03-12');

INSERT INTO Posts(user_id, content, post_date) VALUES
(1, 'First post by Alice', '2023-04-01'),
(2, 'Post by Bob', '2023-04-02'),
(3, 'Post by Charlie', '2023-04-03');

INSERT INTO Likes(post_id, user_id, like_date) VALUES
(1,2,'2023-04-04'),
(1,3,'2023-04-05'),
(2,1,'2023-04-05');

INSERT INTO Comments(post_id, user_id, comment_text, comment_date) VALUES
(1,2,'Nice post!','2023-04-06'),
(2,3,'Cool content!','2023-04-07'),
(1,3,'Interesting','2023-04-08');
