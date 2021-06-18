def all_cheerups()
  run_sql("SELECT * FROM posts;")
end

def see_likes()
  run_sql("SELECT likes.posts_id, COUNT(*), posts.message
  FROM likes
  INNER JOIN posts
  ON likes.posts_id = posts.id
  GROUP BY posts_id, posts.message
  ORDER BY COUNT(*) DESC;")
end

def create_cheerup(user_id, message)
  sql_query = "INSERT INTO posts(user_id, message) VALUES($1, $2 );"
  
  params = [user_id, message]
  run_sql(sql_query, params)
end



def display_single_cheerup(id)
  params = [id]
  run_sql("SELECT * FROM posts WHERE id = $1", params)      
end

def edit_cheerup(id)
  params = [id]
  run_sql("SELECT * FROM posts WHERE id = $1", params)   
end

def update_message(message, id)
  query = "UPDATE posts SET message = $1 WHERE id = $2;"
  params = [message, id]
  run_sql( query, params )
end

def delete_cheerup(id)
  params = [id]
  run_sql("DELETE FROM posts WHERE id = #{id}");
end


