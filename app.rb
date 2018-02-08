require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/player_names' do
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect "/battle_arena"
  end

  get '/battle_arena' do
    @player1 = $player1
    @player2 = $player2
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    Game.new.attack(@player2)
    erb(:attack)
  end

  run! if app_file == $0 # not required when we have config.ru - config.ru runs the program when we use

end
