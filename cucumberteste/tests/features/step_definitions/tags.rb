Dado('que eu tenho {int} laranjas na loja') do |valor1|
    @laranjas = valor1
end

Quando('eu amasso {int} laranjas da loja') do |amassei|
    @total = @laranjas - amassei
end

Então('eu verifico quantas laranjas sobraram na loja') do
    expect(@total).to eq 8
end

Quando('eu vendo {int} laranjas') do |valor2|
    steps %Q{
        Dado que eu tenho 10 laranjas na loja
    }
    @resultado = @laranjas - valor2
end

Então('eu verifico com quantas laranjas eu fiquei na loja') do
    expect(@resultado).to eq 8
end