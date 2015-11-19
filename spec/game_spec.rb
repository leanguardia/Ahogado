require 'Ahorcado'

describe 'ahogado' do
  it "dado un juego iniciado debo tener 8 intentos" do
    @ahorcado = Ahorcado.new
    expect(@ahorcado.intentos).to eq(8)
  end

  it "dado el inicio de un juego se debe seleccionar una palabra aleatoriamente" do
    @ahorcado = Ahorcado.new
    expect(@ahorcado.seleccionar_palabra).not_to eq(nil)
  end

  it "dado el inicio del juego la palabra elegida es 'PERRO'" do
    @ahorcado = Ahorcado.new
    @ahorcado.seleccionar_palabra
    expect(@ahorcado.get_palabra).to eq("PERRO")
  end

  it "dada la palabra 'PERRO' elegida, se debe mostrar '_____'" do
    @ahorcado = Ahorcado.new
    @ahorcado.set_palabra "PERRO"
    expect(@ahorcado.mostrar).to eq("_____")
  end

  it "dada la palabra elegida 'PERRO' hago click en 'E' deberia retornar true" do
    @ahorcado = Ahorcado.new
    @ahorcado.set_palabra "PERRO"
    expect(@ahorcado.coincide('E')).to eq(true)
  end

  it "dada la palabra elegida 'PERRO' hago click en 'K' deberia retornar false" do
    @ahorcado = Ahorcado.new
    @ahorcado.set_palabra "PERRO"
    expect(@ahorcado.coincide('K')).to eq(false)
  end

  it "dada la palabra elegida 'PERRO' hago click en 'P' deberia mostrar 'P____'" do
    @ahorcado = Ahorcado.new
    @ahorcado.set_palabra "PERRO"
    @ahorcado.coincide('P')
    expect(@ahorcado.mostrar).to eq("P____")
  end

  it "dada la palabra elegida 'PERRO' hago click en 'J' deberia mostrar '_____'" do
    @ahorcado = Ahorcado.new
    @ahorcado.set_palabra "PERRO"
    @ahorcado.coincide('J')
    expect(@ahorcado.mostrar).to eq("_____")
  end

  it "dada la palabra 'GATO' en pantalla debe mostrarse '_ _ _ _'" do
    @ahorcado = Ahorcado.new
    @ahorcado.set_palabra "GATO"
    expect(@ahorcado.mostrar_en_vista).to eq("_ _ _ _")
  end



end
