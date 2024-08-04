Quando('eu multiplico minhas {int} por {int}') do |laranja, valor|
    @multiplicacao = laranja * valor
    end
    
    Então('eu vejo qual o {int} da multiplicação.') do |resultado|
    expect(@multiplicacao).to eq resultado
    end