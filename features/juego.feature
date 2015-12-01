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
