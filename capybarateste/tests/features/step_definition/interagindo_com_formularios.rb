Quando('eu faço cadastro') do
  #Antes de tudo, altere a massa que é fixa
  visit('/cadastro')
  #fill_in
  fill_in(id: 'nome', with: "MathLeao")
  #find+.set
  find('#email').set('matheuscanheted@gmail.com')
  #find+.send_keys
  find('#senha').send_keys('TesteTestinha')
  click_button('Cadastrar')
end

Então('verifico se fui cadastrado') do
  texto = find('.alert')
  expect(texto.text).to eql "Usuário inserido com sucesso"
end