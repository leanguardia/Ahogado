Feature: Juego
  Scenario: Iniciar juego
    Given estando en la pantalla de jugar
    Then deberia mostrarse un conjunto de "_" que represente las letras de la palabra que tengo que elegir
    And deberia mostrarse una imagen inicial del ahogado "jar.png"
    And deberia mostrar 8 intentos

  Scenario: ingresar letra
    Given estando en la pantalla de jugar
    And la palabra seleccionada es 'ONOMATOPEYA'
    When ingreso la letra 'A'
    Then se debe mostrar '_ _ _ _ A _ _ _ _ _ A'
    And se debe mostrar el mensaje 'BIEN'
