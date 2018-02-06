require 'sinatra/base'
class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    # 'Testing infrastructure works!'
    erb(:index)
  end

  post '/player_names' do
    @player1 = params[:player1_name]
    @player2 = params[:player2_name]
    session[:players_names] = [@player1, @player2]
    redirect "/battle_arena"
  end

  get '/battle_arena' do
    @player1 = session[:players_names][0]
    @player2 = session[:players_names][1]
    erb(:player_names)
  end

  get '/attack' do
    @player1 = session[:players_names][0]
    @player2 = session[:players_names][1]
    erb(:attack)
  end


  run! if app_file == $0 # not required when we have config.ru - config.ru runs the program when we use

end
