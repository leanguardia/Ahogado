Feature: Juego
  Scenario Outline: Imagen inicial
    Given estando en la pantalla de jugar
    And la palabra seleccionada fue "PARALELEPIPEDO"
    When hago click en los links <intentos>
    Then deberia mostrarse una imagen atractiva propia del juego <imagen>

    Examples:
    | intentos           |     imagen      |
    |    "P"             | "GirrafeJar(8)" |
    |    "X"             | "GirrafeJar(7)" |
    |    "X Y"           | "GirrafeJar(6)" |
    |  "X Y Z"           | "GirrafeJar(5)" |
    | "X Y Z Q"          | "GirrafeJar(4)" |
    | "X Y Z Q T"        | "GirrafeJar(3)" |
    | "X Y Z Q T K"      | "GirrafeJar(2)" |
    | "X Y Z Q T K N"    | "GirrafeJar(1)" |
    | "X Y Z Q T K N M"  | "GirrafeJar(0)" |

  Scenario: Deberia iniciarse el juego con puntaje con 0
    Given estando en la pantalla de jugar
    Then deberia mostrarse "0" en la etiqueta "h3" llamada "puntaje"

  Scenario Outline: Iniciar juego
    Given estando en la pantalla de jugar
    And la palabra seleccionada fue <word>
    When refrescamos la vista para cargar la palabra seleccionada
    Then deberia mostrarse <underscores> en la etiqueta "palabra"

    Examples:
      |       word          |             underscores             |
      |    "TAREA"          |             "_ _ _ _ _"             |
      |    "SUDAN"          |             "_ _ _ _ _"             |
      |    "PAT"            |             "_ _ _"                 |
      |    "RUSIA"          |             "_ _ _ _ _"             |
      |   "PARALELEPIPEDO"  |    "_ _ _ _ _ _ _ _ _ _ _ _ _ _"    |


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

  Scenario: Al escoger letras correctas deberian mostrarse
    Given estando en la pantalla de jugar
    And la palabra seleccionada fue "CANADA"
    When hago click en el link "A"
    And hago click en el link "D"
    Then deberia mostrarse "BIEN" en la etiqueta "mensajeLetra"
    And deberia mostrarse "_ A _ A D A" en la etiqueta "palabra"
    And deberia mostrarse "50" en la etiqueta "h3" llamada "puntaje"

  Scenario: Al escoger una letra incorrecta se deberia
    Given estando en la pantalla de jugar
    And la palabra seleccionada fue "CANADA"
    When hago click en el link "X"
    Then deberia mostrarse "MAL" en la etiqueta "mensajeLetra"
    And deberia mostrarse "_ _ _ _ _ _" en la etiqueta "palabra"
    And deberia mostrarse "Intentos restantes: 7" en la etiqueta "h3" llamada "intentos"

  Scenario: Deberia mostrarse mensaje de ganar al acertar todas las letras de una palabra
    Given estando en la pantalla de jugar
    And la palabra seleccionada fue "BOLIVIA"
    When hago click en los links "B O L I V I A"
    Then deberia mostrarse "GANASTE" en la etiqueta "mensajeLetra"

  Scenario: Deberia mostrarse mensaje de perdida al acertar todas las letras de una palabra
    Given estando en la pantalla de jugar
    And la palabra seleccionada fue "CHILE"
    When hago click en los links "X W R T Y U O P"
    Then deberia mostrarse "PERDISTE" en la etiqueta "mensajeLetra"
