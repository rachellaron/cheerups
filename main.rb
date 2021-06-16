require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'

enable :sessions

require_relative 'db/db'
require_relative 'models/cheerups'
require_relative 'models/user'
require_relative 'models/likes'
require_relative 'helpers/sessions_helper'
require_relative 'controllers/cheerups_controller'
require_relative 'controllers/users_controller'
require_relative 'controllers/sessions_controller'
require_relative 'controllers/likes_controller'



get '/' do
  redirect '/cheerup'
end

# TO DO --->
# 1. fix up why some functions wont work in models/controllers for cheerups.

# 4. Fix up Database tables - Delete Some




# 1. READ   --> User opens local host and redirects to quotes page where shows most recent quotes added in from database (cheerups)
#           --> redirect /views/cheerups/quotes.erb --> display --> title, login or signup button, database quotes (loop)
# 2. CREATE --> User has option to Log in or sign up via button & gets redirect to signup/login page
#           --> /views/users/new.erb --> display --> login form & signup form --> /views/sessions/login.erb --> if user enter incorrect login details, show error message
# 3. CREATE --> Once the database has either find the user in the system or added them, redirect to Post Page (Write your cheerback) -> user has option to click button to take them back home
#           --> /views/cheerups/new.erb --> display --> user input (max120words) submit button --> button to go back home ("/")
# 4. UPDATE --> Once user is logged in, homepage will now display quotes with an edit button
#           --> redirect /views/cheerups/quotes.erb --> display home page with edit button (ifuserloggedin)
# 5. DELETE --> Click Edit button to take them to Edit page, which lets user UPDATE or DELETE post
#           --> /views/cheerups/edit.erb --> display --> re-enter user input (max120words) or use delete button to delete post
# 6. USER also has option to like specific posts 


# DATABASE - CHEERUPS

# TABLE messages -->
# ID    EMAIL    MESSAGE    LIKES

# TABLE users --> 
# ID    EMAIL   PASSWORD 

