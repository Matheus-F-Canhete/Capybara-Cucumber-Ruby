puts "Digite um número entre 1 e 2"
v1 = gets.to_i


# if v1 == 1
#     puts "Valor é igual a 1"
# elsif v1 ==2
#     puts "Valor é igual a 2"
# else 
#     puts "Valor é diferente de 1 ou 2"
# end


# unless v1 == 2
#     puts "condição falsa"
# else 
#     puts "condição verdadeira"
# end


case v1
when 1
    puts "Digitou 1"
when 2
    puts "Digitou 2"
else
    puts "Opção inválida"
end