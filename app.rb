require_relative 'config/environment'
require_relative 'models/piglatinizer'
require 'pry'

class App < Sinatra::Base

    get '/' do 
        erb :user_input        
    end

    post '/piglatinize' do 
        # binding.pry
        phrase = params[:user_phrase]
        new_pig = PigLatinizer.new 
        @result = new_pig.piglatinize(phrase)

        erb :piglatinize
    end
end