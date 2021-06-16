def is_logged_in?
  puts session
  if session[:user_id]
    return true
  else
    return false
  end
end

def current_user
  if is_logged_in?
  return find_user_by_id(session[:user_id])
  else
    return nil
  end
end