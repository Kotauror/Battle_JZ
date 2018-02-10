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
    @game = Game.create(player1, player2)
    redirect "/battle_arena"
  end

  get '/battle_arena' do
    @game = Game.instance
    erb(:play)
  end

  get '/attack' do
    @game = Game.instance
    @game.attack(@game.defending_player)
    @game.switch_turns
    if @game.game_over?
      redirect '/game_over'
    else
      erb :attack
    end
  end

  get '/heal' do
    @game = Game.instance
    @game.heal(@game.current_turn)
    @game.switch_turns
    erb :heal
  end


  get '/game_over' do
    @game = Game.instance
    erb :game_over
  end

  run! if app_file == $0

end
