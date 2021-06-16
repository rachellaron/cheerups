
# HOME PAGE INDEX - MOST LIKED CHEERUPS
get '/cheerup' do
  results = all_cheerups

  # puts see_likes()
  all_likes = run_sql("SELECT likes.posts_id, COUNT(*), posts.message
  FROM likes
  INNER JOIN posts
  ON likes.posts_id = posts.id
  GROUP BY posts_id, posts.message
  ORDER BY COUNT(*) DESC;")

  
  erb :'/cheerup/index', locals: { all_cheerups: results, all_likes: all_likes}
end

# # HOME PAGE _ RECENT CHEERUPS 
get '/cheerup/recent'do
  results = all_cheerups
  erb :'/cheerup/recent', locals: {all_cheerups: results}
end 

# CREATE NEW CHEERUP 
get '/cheerup/create' do
  erb :'/cheerup/new'
end

# POSTING NEW CHEERUP
post '/cheerup' do
  user_id = current_user["id"]
  message = params[:message]
  
  create_cheerup(user_id, message)
  redirect '/cheerup'
end

# # DISPLAYING SINGLE CHEERUP 
get '/cheerup/:id' do |id|

      # results = display_single_cheerup(params)

      # results = run_sql("SELECT * FROM messages WHERE id = $1")

  results = run_sql("SELECT * FROM posts WHERE id = #{id}")
  params = [id]

  erb :'cheerup/show', locals: { single_result: results[0]}
end

# # EDITING SINGLE CHEERUP
get '/cheerup/:id/edit' do |id|

  results = run_sql("SELECT * FROM posts WHERE id = #{id}")
  params = [id]

  # results = edit_cheerup(message)

  puts results[0]["id"]
  erb :'cheerup/edit', locals: { single_result: results[0]}
end

# # UPDATE SINGLE CHEERUP 
put '/cheerup/:id' do |id|
  message = params[:message]
  # puts message
  # puts id
  query = "UPDATE posts SET message = $1 WHERE id = $2;"
  params = [message, id]
  run_sql( query, params )
  
  redirect "/cheerup/#{id}"
end

# DELETE SINGLE CHEERUP 
delete '/cheerup/:id' do
  id = params['id']
  run_sql("DELETE FROM posts WHERE id = #{id}");

  redirect '/cheerup'
end
