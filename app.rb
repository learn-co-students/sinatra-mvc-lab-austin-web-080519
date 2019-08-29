require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
        # user_input = :user_input
    end

    post '/piglatinize' do
        phrase = params[:phrase]
        new_pig = PigLatinizer.new
        @results = new_pig.pig_latin_to_string(phrase)
 
         erb :results
    end

end

