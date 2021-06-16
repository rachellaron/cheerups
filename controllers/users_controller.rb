get '/sign_up' do
  erb :'users/new'
end

post '/users' do
  first_name = params["first_name"]
  email = params["email"]
  password = params["password"]
  
  create_user(first_name, email, password)

  user = find_user( email )

  session[:user_id] = user['id']
  
  redirect '/'
end