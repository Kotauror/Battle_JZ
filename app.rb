require 'sinatra/base'
class Battle < Sinatra::Base
  get '/' do
    'Hello Batte!'
  end

  # start the server if ruby file executed directly and it is - we call app.rb file in config.ru 
  run! if app_file == $0
end
