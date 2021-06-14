# HOME PAGE INDEX 
get '/cheerup' do
  results = all_cheerups

  see_likes()

  erb :'/cheerup/index', locals: { all_cheerups: results,}
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

# # DELETE SINGLE CHEERUP 
# delete '/cheerup/:id'
#   redirect '/cheerup'
# end
