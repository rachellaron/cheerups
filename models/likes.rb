def create_like(user_id, posts_id)
  puts posts_id
  run_sql("INSERT INTO likes(user_id, posts_id) VALUES($1, $2);", [user_id, posts_id])
end

# def see_likes()
run_sql("SELECT posts.id, posts.message 
  FROM posts 
  INNER JOIN likes 
  ON posts id = likes.post_id 
  INNER JOIN users 
  ON users.id = likes.user_id 
  WHERE users.id = 1;"
end