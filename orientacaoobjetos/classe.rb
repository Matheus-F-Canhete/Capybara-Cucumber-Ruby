#classe começa com letra maiúscula
class ClassName
  
    #get e setter do java
    attr_accessor :nome

    #Só permite ler
    #attr_reader :nomeone

    #Só permite escrever
    #attr_writer :nomedois

    def metodo
      #corpo do método
      puts 'Corpo do Método'
    end

    def metodo_composto
        #corpo do método
        puts 'Corpo do Método Composto'
      end
    
end

#Herança
class Heranca < ClassName
end

objeto = ClassName.new

objeto.nome = 'Matheus'

puts objeto.nome

objeto.metodo
objeto.metodo_composto

objeto_heranca = Heranca.new
objeto_heranca.metodo_composto 


class ClasseMae

    def correr
        puts "A mãe corre"
    end

end

class ClasseFilha < ClasseMae

    def correr
        puts "A filha corre"
    end

end

objeto = ClasseFilha.new

objeto.correr