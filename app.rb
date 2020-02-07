require 'sinatra/base'

require './lib/player'

require './lib/game'

class App < Sinatra::Base

  # enable :sessions

  # get '/' do
  #   erb(:index)
  # end

  get '/' do
    erb(:names)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])

    # session[:player_1] = params[:player_1]
    # session[:player_2] = params[:player_2]
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb :play
  end

  get '/attack' do
    game = Game.new
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    game.attack($player_2)
    erb :attack

  end
end