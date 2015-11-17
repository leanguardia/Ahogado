Given(/^estando en la pantalla inicial$/) do
  visit '/'
end

Then(/^deberia mostrarse "([^"]*)" en un header "([^"]*)"$/) do |text, header_name|
  last_response.should have_xpath("//h1[@name=\"#{header_name}\"]")
  last_response.body.should =~ /#{text}/m
end

Then(/^deberia mostrarse un boton "([^"]*)" que sirva para iniciar un juego$/) do |button_name|
  last_response.should have_xpath("//input[@name=\"#{button_name}\"]")
end

When(/^hago click en el boton "([^"]*)"$/) do |button_name|
  click_button(button_name)
end

Then(/^deberia redirigirme a una la direccion "([^"]*)"$/) do |url|
  current_url == url
end