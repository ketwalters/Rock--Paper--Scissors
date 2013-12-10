require 'sinatra/application'
require './hand.rb'

module Game
  class RPS_App < Sinatra::Application
	get '/throw/:type' do
	   	@random = Hand.new(params[:type])
	    erb :hand
	end

  end
end