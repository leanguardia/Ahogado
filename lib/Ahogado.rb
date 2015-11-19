class Ahogado

  @palabra
  @letras
  @intentos

  def initialize
    @intentos = 8
  end

  def get_intentos
    @intentos
  end

  def set_palabra palabra
    @palabra = palabra
    set_letras
  end

  def get_palabra
    @palabra
  end

  def set_letras
    er = /[A-Z]/
    @letras = @palabra.gsub(er,'_')
  end

  def seleccionar_palabra
    @palabra = "ONOMATOPEYA"
    set_letras
  end

  def mostrar
    @letras
  end

  def mostrar_en_vista
    @letras.split('').join(' ')
  end

  def coincide letra
    resp = false
    @palabra.split('').each_with_index do |l,i|
      if l==letra
        @letras[i] = letra.capitalize
        resp = true
      end
    end
    return resp
  end

  def perder_intento
    @intentos -= 1
  end

end