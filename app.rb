require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/player_names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    $game = Game.new(player1, player2)
    redirect "/battle_arena"
  end

  get '/battle_arena' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    @game.switch_turns
    erb(:attack)
  end

  run! if app_file == $0

end
