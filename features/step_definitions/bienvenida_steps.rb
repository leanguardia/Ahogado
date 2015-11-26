Given(/^estando en la pantalla principal$/) do
  visit '/'
end

Then(/^deberia mostrarse "([^"]*)"$/) do |text|
  expect(last_response.body) =~/#{text}/m
end


Then(/^deberia mostrarse un boton "([^"]*)" que sirva para iniciar un juego$/) do |button_name|
  #expect(button_name).to have_xpath("//input[@name=\"#{button_name}\"]")
  expect(last_response.body) =~/#{button_name}/m
end

When(/^hago click en el boton "([^"]*)"$/) do |button_name|
  click_button(button_name)
end

Then(/^deberia mostrarme la pantalla de juego$/) do
  visit '/game'
#
end

Then(/^deberia mostrarse una imagen atractiva propia del juego "([^"]*)"$/) do |img|
  expect(last_response.body) =~/#{img}/m
end
