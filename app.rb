require 'sinatra'

get '/' do
	erb :main
end

get '/jugar' do
	erb :game
end