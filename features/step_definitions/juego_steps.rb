require './lib/Ahogado'

Given(/^estando en la pantalla de jugar$/) do
  visit '/game'
end

Then(/^deberia mostrarse una imagen inicial del ahogado "([^"]*)"$/) do |img|
  expect(last_response.body) =~/#{img}/m
end

Then(/^deberia mostrarse un conjunto de "([^"]*)" que represente las letras de la palabra que tengo que elegir$/) do |underscore|
  expect(last_response.body) =~/#{underscore}/m
end

Then(/^deberia mostrar (\d+) intentos$/) do |intentos|
  @ahogado = Ahogado.new
  expect(@ahogado.get_intentos).to eq(intentos.to_i)
end

Given(/^la palabra seleccionada es 'ONOMATOPEYA'$/) do
  @ahogado = Ahogado.new
  @ahogado.set_palabra "ONOMATOPEYA"
  expect(@ahogado.get_palabra).to eq("ONOMATOPEYA")
end

When(/^ingreso la letra 'A'$/) do
  @ahogado = Ahogado.new
  @ahogado.set_palabra "ONOMATOPEYA"
  @ahogado.procesar_letra 'A'
end
