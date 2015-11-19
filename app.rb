require 'sinatra'
require './lib/Ahogado'

get '/' do
	erb :main
end

get '/game' do
	@@ahogado = Ahogado.new
	@@ahogado.seleccionar_palabra
	erb :game
end

get '/:letter' do
	@acabo = @@ahogado.procesar_letra params[:letter]
	erb :game
end
