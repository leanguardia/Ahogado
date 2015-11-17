require 'sinatra'

get '/' do
  erb :main
end

get '/jugar' do
  'jugar'
end