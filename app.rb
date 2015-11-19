require 'sinatra'

get '/' do
	erb :main
end

get '/game' do
	erb :game
end
