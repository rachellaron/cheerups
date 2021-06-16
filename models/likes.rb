def create_like(user_id, posts_id)
  puts posts_id
  run_sql("INSERT INTO likes(user_id, posts_id) VALUES($1, $2);", [user_id, posts_id])
end

def see_likes()
run_sql("SELECT likes.posts_id, COUNT(*), posts.message
FROM likes
INNER JOIN posts
ON likes.posts_id = posts.id
GROUP BY posts_id, posts.message
ORDER BY COUNT(*) DESC;")
end

