Feature: Bienvenida
  Scenario: Mostrar Bienvenida
    Given estando en la pantalla principal
    Then deberia mostrarse "Bienvenido"
    And deberia mostrarse un boton "jugar" que sirva para iniciar un juego

  Scenario: Iniciar Juego
    Given estando en la pantalla principal
    When hago click en el boton "jugar"
    Then deberia mostrarme la pantalla de juego

    Scenario: Mostrar imagen de Portada
      Given estando en la pantalla principal
      Then deberia mostrarse una imagen atractiva propia del juego "jar.png"
