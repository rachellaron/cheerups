def all_cheerups()
  run_sql("SELECT * FROM posts;")
end

def create_cheerup(user_id, message)

  sql_query = "INSERT INTO posts(user_id, message) VALUES($1, $2 );"
  
  params = [user_id, message]
  run_sql(sql_query, params)
end

def display_single_cheerup(params)
  # puts "hello"
  # puts params
  run_sql("SELECT * FROM posts WHERE id = $1;", params)
end

def edit_cheerup(message)
  run_sql("SELECT * FROM posts WHERE id = #{id}")
  params = [id]
end

# def see_likes()
#   puts "hello"
#   # run_sql("SELECT posts.id, posts.message FROM posts INNER JOIN likes ON posts id = likes.post_id INNER JOIN users ON users.id = likes.user_id WHERE users.id = 1;"
# end