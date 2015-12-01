require './lib/Ahogado'

Given(/^estando en la pantalla de jugar$/) do
  visit '/game'
end

Given(/^la palabra seleccionada fue "([^"]*)"$/) do |selected_word|
  @ahogado = Ahogado.new
   @ahogado.set_palabra selected_word
end

When(/^hago click en el link "([^"]*)"$/) do |letra|
  click_link(letra)
end

Then(/^deberia mostrar el boton "([^"]*)" en la piscina del olvido$/) do |letraOlvidada|
  expect(last_response).to have_xpath("//a[@id=\"#{letraOlvidada}\"]")
end

Then(/^deberia mostrarse "([^"]*)" en la etiqueta "([^"]*)"$/) do |underscores, label|
  last_response.body.should =~ /#{underscores}/m
  expect(last_response).to have_xpath("//h1[@id=\"#{label}\"]")
end

Then(/^deberia mostrarse el boton "([^"]*)"$/) do |letra|
  expect(last_response).to have_xpath("//a[@href=\"/#{letra}\"]")
end
