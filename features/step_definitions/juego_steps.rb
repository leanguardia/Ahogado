Given(/^estando en la pantalla de jugar$/) do
  visit '/game'
end

Then(/^deberia mostrarse una imagen inicial del ahogado "([^"]*)"$/) do |img|
  expect(last_response.body) =~/#{img}/m
end

Then(/^deberia mostrarse un conjunto de "([^"]*)" que represente las letras de la palabra que tengo que elegir$/) do |underscore|
  expect(last_response.body) =~/#{underscore}/m
end

Then(/^deberia mostrar (\d+) intentos restantes$/) do |tries|
  #puts last_response.body

  #expect(@browser.label(:text => text).exist?).to eq(true)
  expect(last_response.body) =~/#{tries}/m
end
