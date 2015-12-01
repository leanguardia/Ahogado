Feature: Juego
  Scenario Outline: Iniciar juego
    Given estando en la pantalla de jugar
    And la palabra seleccionada fue <word>
    Then deberia mostrarse <underscores> en la etiqueta "palabra"

    Examples:
      |word|underscores|
      |"DINOSAURIO"|"_ _ _ _ _ _ _ _ _ _"|
      |"DORMIR"|"_ _ _ _ _ _"|
      |"ONOMATOPEYA"|"_ _ _ _ _ _ _ _ _ _ _"|
      |"PALABRA"|"_ _ _ _ _ _ _"|
      |"TAREA"|"_ _ _ _ _"|
      |"BRASIL"|"_ _ _ _ _"|
      |"PAT"|"_ _ _"|


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
