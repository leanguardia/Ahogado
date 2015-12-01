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
#    Then se debe mostrar '_ _ _ _ A _ _ _ _ _ A'
#    And se debe mostrar el mensaje 'BIEN'

  Scenario Outline: Ver letras de juego
    Given estando en la pantalla de jugar
    Then deberia mostrarse el boton <letra>

    Examples:
      |  letra  |
      |   "A"   |
      |   "B"   |
      |   "C"   |
      |   "D"   |
      |   "E"   |
      |   "F"   |
      |   "G"   |
      |   "H"   |
      |   "I"   |
      |   "J"   |
      |   "K"   |
      |   "L"   |
      |   "M"   |
      |   "N"   |
      |   "O"   |
      |   "P"   |
      |   "Q"   |
      |   "R"   |
      |   "S"   |
      |   "T"   |
      |   "U"   |
      |   "V"   |
      |   "W"   |
      |   "X"   |
      |   "Y"   |
      |   "Z"   |

  Scenario Outline: Letras escogidas se van a la piscina del olvido
    Given estando en la pantalla de jugar
    When hago click en el link <letra>
    Then deberia mostrar el boton <letraOlvidada> en la piscina del olvido

    Examples:
      |  letra  |  letraOlvidada  |
      |   "A"   |   "AOlvidada"   |
      |   "E"   |   "EOlvidada"   |
      |   "F"   |   "FOlvidada"   |
      |   "G"   |   "GOlvidada"   |
      |   "W"   |   "WOlvidada"   |
      |   "X"   |   "XOlvidada"   |
      |   "Y"   |   "YOlvidada"   |
      |   "Z"   |   "ZOlvidada"   |
