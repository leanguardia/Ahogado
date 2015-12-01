require 'Ahogado'

describe 'ahogado' do

  before(:each) do
    @ahogado = Ahogado.new
  end

  it 'dado un juego iniciado debo tener 8 intentos' do
    expect(@ahogado.get_intentos).to eq(8)
  end

  it 'dado el inicio de un juego se debe elegir una palabra' do
    @ahogado.set_palabra 'PALABRA'
    expect(@ahogado.get_palabra).not_to eq(nil)
  end

  it "dada la palabra 'PERRO' elegida, se debe mostrar '_____'" do
    @ahogado.set_palabra 'PERRO'
    expect(@ahogado.mostrar).to eq('_____')
  end

  it "dada la palabra elegida 'PERRO' hago click en 'E' deberia retornar true" do
    @ahogado.set_palabra 'PERRO'
    expect(@ahogado.coincide('E')).to eq(true)
  end

  it "dada la palabra elegida 'PERRO' hago click en 'K' deberia retornar false" do
    @ahogado.set_palabra 'PERRO'
    expect(@ahogado.coincide('K')).to eq(false)
  end

  it "dada la palabra elegida 'PERRO' hago click en 'K' deberia tener 7 intentos" do
    @ahogado.set_palabra 'PERRO'

    if @ahogado.coincide('K')
      @ahogado.mostrar_en_vista
    else
      @ahogado.perder_intento
    end
    expect(@ahogado.get_intentos).to eq(7)
  end

  it "dada la palabra elegida 'PERRO' hago click en 'P' deberia mostrar 'P____'" do
    @ahogado.set_palabra 'PERRO'
    @ahogado.coincide('P')
    expect(@ahogado.mostrar).to eq('P____')
  end

  it "dada la palabra elegida 'PERRO' hago click en 'J' deberia mostrar '_____'" do
    @ahogado.set_palabra 'PERRO'
    @ahogado.coincide('J')
    expect(@ahogado.mostrar).to eq('_____')
  end

  it "dada la palabra 'GATO' en pantalla debe mostrarse '_ _ _ _'" do
    @ahogado.set_palabra 'GATO'
    expect(@ahogado.mostrar_en_vista).to eq('_ _ _ _')
  end

  it "dada la palabra 'GATO' e ingrese 'G A T O' se muestra un mensaje de victoria " do
    @ahogado.set_palabra 'GATO'
    @ahogado.procesar_letra 'T'
    @ahogado.procesar_letra 'G'
    @ahogado.procesar_letra 'A'
    @ahogado.procesar_letra 'O'
    expect(@ahogado.mostrar_mensaje).to eq('GANASTE')

  end

  it "dado que mis intentos son 0 se muestra mensaje 'PERDISTE' " do
    # dado que
    @ahogado.set_palabra 'GATO'
    # when
    @ahogado.procesar_letra 'Z'
    @ahogado.procesar_letra 'X'
    @ahogado.procesar_letra 'C'
    @ahogado.procesar_letra 'V'
    @ahogado.procesar_letra 'B'
    @ahogado.procesar_letra 'N'
    @ahogado.procesar_letra 'E'
    @ahogado.procesar_letra 'Q'
    # then
    expect(@ahogado.mostrar_mensaje).to eq('PERDISTE')
  end


  it 'should initialize with score 0' do
    expect(@ahogado.puntaje).to eq(0)
  end

  it 'should raise score to 25' do
    @ahogado.aumentar_puntaje
    expect(@ahogado.puntaje).to eq(25)
  end

  it 'should raise score to 50' do
    @ahogado.aumentar_puntaje
    @ahogado.aumentar_puntaje
    expect(@ahogado.puntaje).to eq(50)
  end

  it 'should raise score to 25 when made a right guess' do
    @ahogado.set_palabra 'PERRO'
    @ahogado.procesar_letra 'P'
    expect(@ahogado.puntaje).to eq(25)
  end

  it 'should reset score to 0 when a new word is set' do
    @ahogado.aumentar_puntaje
    @ahogado.aumentar_puntaje
    expect(@ahogado.puntaje).to eq(50)
    @ahogado.set_palabra 'PERRO'
    expect(@ahogado.puntaje).to eq(0)
  end

  it 'should raise score to 100 when the word is guessed' do
    @ahogado.set_palabra 'PE'
    @ahogado.procesar_letra 'P'
    @ahogado.procesar_letra 'E'
    expect(@ahogado.puntaje).to eq(100)
  end

  it 'should raise score to 150 when the word is guessed' do
    @ahogado.set_palabra 'PERRO'
    @ahogado.procesar_letra 'P'
    @ahogado.procesar_letra 'E'
    @ahogado.procesar_letra 'R'
    @ahogado.procesar_letra 'O'
    expect(@ahogado.puntaje).to eq(150)
  end

end
