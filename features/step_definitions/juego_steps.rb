require './lib/Ahogado'

Given(/^estando en la pantalla de jugar$/) do
  visit '/game'
end

Given(/^la palabra seleccionada fue "([^"]*)"$/) do |selected_word|
   @@ahogado.set_palabra selected_word
end

When(/^refrescamos la vista para cargar la palabra seleccionada$/) do
  click_link('X')
end

When(/^hago click en el link "([^"]*)"$/) do |letra|
  click_link(letra)
end

When(/^hago click en los links "([^"]*)"$/) do |letras|
  letras.split(' ').each do |letra|
    click_link(letra)
  end
end


Then(/^deberia mostrar el boton "([^"]*)" en la piscina del olvido$/) do |letraOlvidada|
  expect(last_response).to have_xpath("//a[@id=\"#{letraOlvidada}\"]")
end

Then(/^deberia mostrarse "([^"]*)" en la etiqueta "([^"]*)"$/) do |underscores, label|
  last_response.body.should =~ /#{underscores}/m
  expect(last_response).to have_xpath("//h1[@id=\"#{label}\"]")
end

Then(/^deberia mostrarse "([^"]*)" en la etiqueta "([^"]*)" llamada "([^"]*)"$/) do |message, tag, label|
  last_response.body.should =~ /#{message}/m
  expect(last_response).to have_xpath("//#{tag}[@id=\"#{label}\"]")
end

Then(/^deberia mostrarse el boton "([^"]*)"$/) do |letra|
  expect(last_response).to have_xpath("//a[@href=\"/#{letra}\"]")
end
