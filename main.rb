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



