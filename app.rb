require 'sinatra/base'
require_relative './lib/player'

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
    @player1_name = $player1.name
    @player2_name = $player2.name
    @player1_hp = $player1.hp
    @player2_hp = $player2.hp
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
