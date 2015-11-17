Feature: Juego
  Scenario: Iniciar
    Given estando en la pantalla de jugar
    When hago click en un boton "empezar"
    Then deberia mostrarse un label "palabra" que tenga solo barras bajas

#  Scenario: Jugar
#    Given estando en la pantalla inicial
#    When hago click en el boton "jugar"
#    Then deberia redirigirme a una la direccion "/jugar"
