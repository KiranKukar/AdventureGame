require 'sinatra'
require 'sinatra/reloader'

class AdventureGame < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "Are you ready to go on an adventure?"
  end

  run if app_file == $0

end