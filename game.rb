require './lib/hand.rb'
require 'bundler'
Bundler.require

module Game
  class RPS_App < Sinatra::Application
	get '/throw/:type' do |type| 
	   	@rpsl = Hand.new(type)
	    erb :hand
	end

	get '/' do
		erb :index
	end

  end
end