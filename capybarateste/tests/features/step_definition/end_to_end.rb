Quando('eu cadastro um usuário') do
  visit('https://seubarriga.wcaquino.me/cadastro')
  nome = Faker::Name.first_name
  find('#nome').set(nome)
  email = Faker::Internet.email
  find('#email').set(email)
  senha = Faker::Internet.password
  find('#senha').set(senha)
  click_button('Cadastrar')
end

Então('verifico se o usuário foi cadastrado') do
  texto = find('.alert.alert-success')
  expect(texto.text). to eql "Usuário inserido com sucesso"
end

#ele mantem a sessão mesmo sendo outro cenário porque foi feita alteração no arquivo env.rb e assim ocorre o end to end
Quando('logo com o usuário') do
  sleep(5)
end

Então('verifico se o usuário foi editado') do
  
end