
# HOME PAGE INDEX - MOST LIKED CHEERUPS
get '/cheerup' do
  results = all_cheerups
  session[:user_id]
  all_likes = see_likes()
    
  erb :'/cheerup/index', locals: { all_cheerups: results, all_likes: all_likes}
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

  # results = display_single_cheerup()
  
  results = run_sql("SELECT * FROM posts WHERE id = #{id}")
  params = [id]

  likes_count = []
  likes_posts = []

  all_likes = see_likes()

  all_likes.each do |like|
      likes_posts.append(like["posts_id"])
      likes_count.append(like["count"])
  end

  total = likes_posts.zip(likes_count).to_h

  erb :'cheerup/show', locals: { single_result: results[0], total: total}
end

# # EDITING SINGLE CHEERUP
get '/cheerup/:id/edit' do |id|

  # results = edit_cheerup()

  results = run_sql("SELECT * FROM posts WHERE id = #{id}")
  params = [id]

  erb :'cheerup/edit', locals: { single_result: results[0]}
end

# # UPDATE SINGLE CHEERUP 
put '/cheerup/:id' do |id|
  message = params[:message]

  # query = update_message(message, id)
  query = "UPDATE posts SET message = $1 WHERE id = $2;"
  params = [message, id]
  run_sql( query, params )
  
  redirect "/cheerup/#{id}"
end

# DELETE SINGLE CHEERUP 
delete '/cheerup/:id' do
  id = params['id']
  run_sql("DELETE FROM posts WHERE id = #{id}");
  
  # delete()
  redirect '/cheerup'
end
