Feature: Bienvenida
  Scenario: Ahorcado
    Given estando en la pantalla inicial
    Then deberia mostrarse "Bienvenido a Ahorcado" en un header "bienvenida"
    And deberia mostrarse un boton "jugar" que sirva para iniciar un juego

  Scenario: Jugar
    Given estando en la pantalla inicial
    When hago click en el boton "jugar"
    Then deberia redirigirme a una la direccion "/jugar"
