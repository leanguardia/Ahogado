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
	if @@ahogado.coincide(params[:letter])
		@mensaje = "BIEN"
	else
		@@ahogado.perder_intento
		@mensaje = "MAL"
	end
	erb :game
end
