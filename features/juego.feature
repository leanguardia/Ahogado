Feature: Juego
  Scenario: Iniciar juego
    Given estando en la pantalla de jugar
    Then deberia mostrarse un conjunto de "_" que represente las letras de la palabra que tengo que elegir
    And deberia mostrarse una imagen inicial del ahogado "jar.png"
    And deberia mostrar "8" intentos restantes en el label "intentos"

    Scenario Outline: Ver letras de juego
      Given estando en la pantalla de jugar
      Then deberia mostrarse el boton <letra>

      Examples:
        | letra |
        |     "A"     |
        |     "B"     |
        |     "C"     |
        |     "D"     |
        |     "E"     |
        |     "F"     |
        |     "G"     |
        |     "H"     |
        |     "I"     |
        |     "J"     |
        |     "K"     |
        |     "L"     |
        |     "M"     |
        |     "N"     |
        |     "O"     |
        |     "P"     |
        |     "Q"     |
        |     "R"     |
        |     "S"     |
        |     "T"     |
        |     "U"     |
        |     "V"     |
        |     "W"     |
        |     "X"     |
        |     "Y"     |
        |     "Z"     |
