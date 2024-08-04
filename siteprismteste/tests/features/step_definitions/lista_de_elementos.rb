Quando('mapeio uma tabela') do
  
  @lista_de_elementos = MapeandoListaElementos.new

  #mapeando todos os elementos de uma tabela, sem contar o theader
  @lista_de_elementos.load
  puts @lista_de_elementos.lista.size
  expect(@lista_de_elementos.lista.size). to eql 10  

  #pegando o valor de apenas um elemento da tabela, sem contar o theader
  puts @lista_de_elementos.lista[1].text

  #lista todos os elementos das tabelas
  @lista_de_elementos.lista.each do |listas|
    puts listas.text
  end

end