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
    saida = 0
  
    puts "Máquina iniciou no estado: " + estado
  
    loop do
      case [proximo, estado]
      in ["I", "q0"]
        estado = "q1"
        saida += 1
	puts "Saída: #{saida}"
      in ["I", "q1"]
        estado = "q2"
        saida += 1
	puts "Saída: #{saida}"
      in ["X", "q1"]
        estado = "q6"
        saida += 8
	puts "Saída: #{saida}"
      in ["V", "q1"]
	estado = "q5"
        saida += 3
	puts "Saída: #{saida}"
	in ["I", "q2"]
	  estado= "q3"	
	  saida += 1
	  puts "Saída: #{saida}"
	in ["V", "q0"]
	  estado = "q7"
	  saida += 5
	  puts "Saída: #{saida}"
	in ["I", "q7"]
	  estado = "q8"
	  saida += 1
	  puts "Saída: #{saida}"
	in ["I", "q8"]
	  estado = "q9"
	  saida +=1
	  puts "Saída: #{saida}"
	in ["I", "q9"]
	  estado ="q10"
	  saida+= 1
        puts "Aceito 😀"
        puts "Estado final: " + estado
        puts "Entrada: " + @cadeia
        puts "Saída: #{saida}"
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

# entrada = "VII"
adf = ADF.new("VII")
adf.iniciar
