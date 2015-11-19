Feature: Juego
  Scenario: Iniciar juego
    Given estando en la pantalla de jugar
    Then deberia mostrarse un conjunto de "_" que represente las letras de la palabra que tengo que elegir
    And deberia mostrarse una imagen inicial del ahogado "jar.png"
    And deberia mostrar "8" intentos restantes en el label "intentos"
