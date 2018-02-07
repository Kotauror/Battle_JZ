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
    # session[:players_names] = [@player1, @player2]
    redirect "/battle_arena"
  end

  get '/battle_arena' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:player_names)
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player1hp = $player1.hp
    @player2hp = $player2.hp
    @player1.attack($player2)
    erb(:attack)
  end

  run! if app_file == $0 # not required when we have config.ru - config.ru runs the program when we use

end
