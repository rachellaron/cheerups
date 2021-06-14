post '/likes' do
  user_id = current_user['id']
  posts_id = params['posts_id']
  puts posts_id
  create_like(user_id, posts_id)

  redirect '/cheerup'
end