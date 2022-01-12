require 'sinatra'
require 'sinatra/reloader'
require './lib/player'

class AdventureGame < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    also_reload './lib/player'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.create(params['name'])
    redirect '/play'
  end

  get '/play' do
    @player = Player.instance
    erb :play
  end

  run if app_file == $0

end