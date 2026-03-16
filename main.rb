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

      in ["L", "q10"]
        estado = "q14"
        saida += 30

      in ["L", "q0"]
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

# conectar a segunda parte com a primeira parte

        in ["I", "q10"]
            estado = "q1"
            saida += 1
        
        in["V", "q10"]
            estado = "q6"
            saida += 5

        in ["I", "q11"]
            estado = "q1"
            saida += 1
        
        in["V", "q11"]
            estado = "q6"
            saida += 5
        
        in ["I", "q12"]
            estado = "q1"
            saida += 1
        
        in["V", "q12"]
            estado = "q6"
            saida += 5

        in ["I", "q13"]
            estado = "q1"
            saida += 1
        
        in["V", "q13"]
            estado = "q6"
            saida += 5

        in ["I", "q14"]
            estado = "q1"
            saida += 1
        
        in["V", "q14"]
            estado = "q6"
            saida += 5

        in ["I", "q15"]
            estado = "q1"
            saida += 1

        in["V", "q15"]
            estado = "q6"
            saida += 5
        
        in ["I", "q16"]
            estado = "q1"
            saida += 1
        
        in["V", "q16"]
            estado = "q6"
            saida += 5
        
        in ["I", "q17"]
            estado = "q1"
            saida += 1

        in["V", "q17"]
            estado = "q6"
            saida += 5
        
        in ["I", "q18"]
            estado = "q1"
            saida += 1
        
        in["V", "q18"]
            estado = "q6"
            saida += 5

# ----------------------------------------------------------------------------------------

        #fim da segunda parte do código - falta conectar com a primeira parte | inicio da terceira parte do código

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

# conectar a terceira parte com a segunda parte

      in ["I", "q19"]
        estado = "q1"
        saida += 1

        in ["V", "q19"]
        estado = "q6"
        saida += 5

        in ["X", "q19"]
            estado = "q10"
            saida += 10

        in ["L", "q19"]
            estado = "q15"
            saida += 50


         in ["I", "q20"]
            estado = "q1"
            saida += 1

        in ["V", "q20"]
            estado = "q6"
            saida += 5

        in ["X", "q20"]
            estado = "q10"
            saida += 10

        in ["L", "q20"]
            estado = "q15"
            saida += 50


        in ["I", "q21"]
        estado = "q1"
        saida += 1

        in ["V", "q21"]
        estado = "q6"
        saida += 5

        in ["X", "q21"]
            estado = "q10"
            saida += 10

        in ["L", "q21"]
            estado = "q15"
            saida += 50


        in ["I", "q22"]
            estado = "q1"
            saida += 1

        in ["V", "q22"]
            estado = "q6"
            saida += 5

        in ["X", "q22"]
            estado = "q10"
            saida += 10

        in ["L", "q22"]
            estado = "q15"
            saida += 50
        

        in ["I", "q23"]
            estado = "q1"
            saida += 1

        in ["V", "q23"]
            estado = "q6"
            saida += 5

        in ["X", "q23"]
            estado = "q10"
            saida += 10

        in ["L", "q23"]
            estado = "q15"
            saida += 50


        in ["I", "q24"]
            estado = "q1"
            saida += 1

        in ["V", "q24"]
            estado = "q6"
            saida += 5

        in ["X", "q24"]
            estado = "q10"
            saida += 10

        in ["L", "q24"]
            estado = "q15"
            saida += 50


        in ["I", "q25"]
            estado = "q1"
            saida += 1

        in ["V", "q25"]
            estado = "q6"
            saida += 5

        in ["X", "q25"]
            estado = "q10"
            saida += 10

        in ["L", "q25"]
            estado = "q15"
            saida += 50


            in ["I", "q26"]
        estado = "q1"
        saida += 1

        in ["V", "q26"]
        estado = "q6"
        saida += 5

        in ["X", "q26"]
            estado = "q10"
            saida += 10

        in ["L", "q26"]
            estado = "q15"
            saida += 50


            in ["I", "q27"]
        estado = "q1"
        saida += 1

        in ["V", "q27"]
        estado = "q6"
        saida += 5

        in ["X", "q27"]
            estado = "q10"
            saida += 10

        in ["L", "q27"]
            estado = "q15"
            saida += 50

# --------------------------------------------------------------------------------------------------


      # fim da terceira parte do código - falta conectar com a segunda parte | inicio da quarta parte do código

      in ["M", "q0"]
        estado = "q28"
        saida += 1000

      in ["M", "q28"]
        estado = "q29"
        saida += 1000

      in ["M", "q29"]
        estado = "q30"
        saida += 1000

      # fim da quarta parte do código - falta conectar com a parte tres

    # conectando a quarta parte com a terceira parte
      in ["I", "q28"]
        estado = "q1"
        saida += 1

        in ["V", "q28"]
        estado = "q6"
        saida += 5

        in ["X", "q28"]
            estado = "q10"
            saida += 10
        
        in ["L", "q28"]
            estado = "q15"
            saida += 50

      in ["C", "q28"]
        estado = "q19"
        saida += 100

    in ["D", "q28"]
        estado = "q24"
        saida += 500


    in ["I", "q29"]
        estado = "q1"
        saida += 1

    in ["V", "q29"]
        estado = "q6"
        saida += 5

    in ["X", "q29"]
        estado = "q10"
        saida += 10

    in ["L", "q29"]
        estado = "q15"
        saida += 50

    in ["C", "q29"]
        estado = "q19"
        saida += 100
    
    in ["D", "q29"]
        estado = "q24"
        saida += 500
        

    in ["I", "q30"]
        estado = "q1"
        saida += 1

    in ["V", "q30"]
        estado = "q6"
        saida += 5

    in ["X", "q30"]
        estado = "q10"
        saida += 10

    in ["L", "q30"]
        estado = "q15"
        saida += 50
    
    in ["C", "q30"]
        estado = "q19"
        saida += 100

    in ["D", "q30"]
        estado = "q24"
        saida += 500

      # Condições de Aceitação (Quando a string termina)
    #   in ["", "q1"] | ["", "q2"] | ["", "q3"] | ["", "q5"] | ["", "q6"] | ["", "q7"] | ["", "q8"] | ["", "q9"]
    #     puts "Aceito 😀"
    #     puts "Estado final: #{estado}"
    #     puts "Entrada: #{@cadeia}"
    #     puts "Saída total: #{saida}"
    #     break
    in ["", estado]
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

puts "Digite um número romano:"
entrada = gets.chomp
adf = ADF.new(entrada)
adf.iniciar