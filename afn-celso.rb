class ADF
  def initialize(cadeia)
    @cadeia = cadeia
    @indice = 0
    @max = cadeia.size
  end

  # Pega o próximo caractere da cadeia
  def proximo
    if @indice >= @max
      ""
    else
      @cadeia[@indice]
    end
  end

  def iniciar
    estado = "q0"
    saida = 0

    puts "Máquina iniciou no estado: #{estado}"

    loop do
      simbolo = proximo
      
      case [simbolo, estado]
      in ["I", "q0"]
        estado = "q1"
        saida += 1
      
      in ["I", "q1"]
        estado = "q2"
        saida += 1
      
      in ["I", "q2"]
        estado = "q3"
        saida += 1
      
      in ["V", "q0"]
        estado = "q6"
        saida += 5
      
      in ["I", "q6"]
        estado = "q7"
        saida += 1
      
      in ["I", "q7"]
        estado = "q8"
        saida += 1
      
      in ["I", "q8"]
        estado = "q9"
        saida += 1

      in ["X", "q1"]
        estado = "q4"
        saida += 8 # (1 de q1 + 8 = 9)

      in ["V", "q1"]
        estado = "q5"
        saida += 3 # (1 de q1 + 3 = 4)

# fim da primeira parte do código | inicio da segunda parte do codigo
# ainda falta conectar a segunda parte com a primeira parte, mas aqui está a continuação do código:

      in ["X", "q0"]
        estado = "q10"
        saida += 10

      in ["X", "q10"]
        estado = "q11"
        saida += 10

      in ["X", "q11"]
        estado = "q12"
        saida += 10

      in ["C", "q10"]
        estado = "q13"
        saida += 80

      in ["L'", "q10"]
        estado = "q14"
        saida += 30

      in ["L'", "q0"]
        estado = "q15"
        saida += 50

      in ["X", "q15"]
        estado = "q16"
        saida += 10

      in ["X", "q16"]
        estado = "q17"
        saida += 10

      in ["X", "q17"]
        estado = "q18"
        saida += 10

        #fim da segunda parte do código | inicio da terceira parte do código

      in ["C", "q0"]
        estado = "q19"
        saida += 100
        
      in ["C", "q19"]
        estado = "q20"
        saida += 100

      in ["C", "q20"]
        estado = "q21"
        saida += 100

      in ["M", "q19"]
        estado = "q22"
        saida += 800

      in ["D", "q19"]
        estado = "q23"
        saida += 300

      in ["D", "q0"]
        estado = "q24"
        saida += 500

      in ["C", "q24"]
        estado = "q25"
        saida += 100

      in ["C", "q25"]
        estado = "q26"
        saida += 100
      
      in ["C", "q26"]
        estado = "q27"
        saida += 100

      # 

      # Condições de Aceitação (Quando a string termina)
      in ["", "q1"] | ["", "q2"] | ["", "q3"] | ["", "q5"] | ["", "q6"] | ["", "q7"] | ["", "q8"] | ["", "q9"]
        puts "Aceito 😀"
        puts "Estado final: #{estado}"
        puts "Entrada: #{@cadeia}"
        puts "Saída total: #{saida}"
        break

      else
        puts "Erro: Sequência inválida ou não reconhecida."
        break
      end

      @indice += 1
      puts "Símbolo: #{simbolo} | Estado: #{estado} | Saída parcial: #{saida}"
    end
  end
end

# Teste com diferentes entradas: "I", "II", "IV", "V", "VI", "IX"
adf = ADF.new("VI")
adf.iniciar