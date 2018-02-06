require 'sinatra/base'
class Battle < Sinatra::Base
  get '/' do
    # 'Testing infrastructure works!'
    erb(:index)
  end

  post '/player_names' do
    @player1 = params[:player1_name]
    @player2 = params[:player2_name]
    erb(:player_names)
  end
  # start the server if ruby file executed directly and it is - we call app.rb file in config.ru


  run! if app_file == $0 # not required when we have config.ru - config.ru runs the program when we use 
end
