require 'sinatra/base'

module Game
  class RPS_App < Sinatra::Application
    get '/' do
    	@random = Compliment.new 
	    erb :compliment
    end

	get '/' do
	   	@random = Compliment.new
	    erb :compliment
	end

  end
end