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

# METHODS WONT WORK -->

    def display_single_cheerup()
      run_sql("SELECT * FROM posts WHERE id = #{id}")
      params = [id]
    end

    def edit_cheerup()
      run_sql("SELECT * FROM posts WHERE id = #{id}")
      params = [id]
    end

    def update_message(message, id)
      query = "UPDATE posts SET message = $1 WHERE id = $2;"
      params = [message, id]
      run_sql( query, params )
    end

    def delete()
      id = params['id']
      run_sql("DELETE FROM posts WHERE id = #{id}");
    end


