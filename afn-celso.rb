class ADF
  def initialize(cadeia)
      @cadeia = cadeia
      @indice = 0
      @max = cadeia.size 
  end

  # pega apenas um caracter
  def proximo
    puts "Entre com o próximo símbolo:"
    if @indice == @max
        ""
    else
        @cadeia[@indice]
    end
  end
  
  def iniciar
    estado = "q0"
  
    puts "Máquina iniciou no estado: " + estado
  
    loop do
      case [proximo, estado]
      in ["a", "q0"]
        estado = "q0"
      in ["b", "q0"]
        estado = "q1"
      in ["b", "q1"]
        estado = "q2"
      in ["", "q2"]
        puts "Aceito 😀"
        break
      else
        puts "Erro"
        break
      end
  
      @indice += 1
      puts "Estado: " + estado
    end
  end
end

adf = ADF.new("aabb")
adf.iniciar