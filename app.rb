require 'sinatra'
require './lib/Ahogado'

get '/' do
	erb :main
end

get '/game' do
	@@abecedario = Hash.new
	abc = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
	abc.each do |letra|
		@@abecedario[letra.to_sym] = false
	end
	@@ahogado = Ahogado.new
	@@ahogado.seleccionar_palabra
	erb :game
end

get '/favicon.ico' do
	''
end

get '/:letter' do
	if @@ahogado.coincide(params[:letter])
		@mensaje = 'BIEN'
	else
		@mensaje = 'MAL'
	end
	@@abecedario[params[:letter].to_sym] = true
	@acabo = @@ahorcado.procesar_letra params[:letter]
	erb :game
end

