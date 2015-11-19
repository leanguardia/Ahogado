require 'Ahogado'

describe 'ahogado' do

  before(:each) do
    @ahogado = Ahogado.new
  end

  it "dado un juego iniciado debo tener 8 intentos" do
    expect(@ahogado.get_intentos).to eq(8)
  end

  it "dado el inicio de un juego se debe seleccionar una palabra aleatoriamente" do
    expect(@ahogado.seleccionar_palabra).not_to eq(nil)
  end

  it "dado el inicio del juego la palabra elegida es 'ONOMATOPEYA'" do
    @ahogado.seleccionar_palabra
    expect(@ahogado.get_palabra).to eq("ONOMATOPEYA")
  end

  it "dada la palabra 'PERRO' elegida, se debe mostrar '_____'" do
    @ahogado.set_palabra "PERRO"
    expect(@ahogado.mostrar).to eq("_____")
  end

  it "dada la palabra elegida 'PERRO' hago click en 'E' deberia retornar true" do
    @ahogado.set_palabra "PERRO"
    expect(@ahogado.coincide('E')).to eq(true)
  end

  it "dada la palabra elegida 'PERRO' hago click en 'K' deberia retornar false" do
    @ahogado.set_palabra "PERRO"
    expect(@ahogado.coincide('K')).to eq(false)
  end

  it "dada la palabra elegida 'PERRO' hago click en 'K' deberia tener 7 intentos" do
    @ahogado.set_palabra "PERRO"

    if @ahogado.coincide('K')
      @ahogado.mostrar_en_vista
    else
      @ahogado.perder_intento
    end
    expect(@ahogado.get_intentos).to eq(7)
  end

  it "dada la palabra elegida 'PERRO' hago click en 'P' deberia mostrar 'P____'" do
    @ahogado.set_palabra "PERRO"
    @ahogado.coincide('P')
    expect(@ahogado.mostrar).to eq("P____")
  end

  it "dada la palabra elegida 'PERRO' hago click en 'J' deberia mostrar '_____'" do
    @ahogado.set_palabra "PERRO"
    @ahogado.coincide('J')
    expect(@ahogado.mostrar).to eq("_____")
  end

  it "dada la palabra 'GATO' en pantalla debe mostrarse '_ _ _ _'" do
    @ahogado.set_palabra "GATO"
    expect(@ahogado.mostrar_en_vista).to eq("_ _ _ _")
  end

end