Quando('clico no botão') do
  visit('/')
  find('#senha').set('TesteTestinha')
  click_button('Entrar')
end

Então('verifico se o texto apareceu na tela com sucesso') do
  #usando assert_text
  assert_text "Email é um campo obrigatório"
  
  #usando has_text?
  page.has_text?('Email é um campo obrigatório')

  #usando have_text
  have_text('Email é um campo obrigatório')
  sleep(3)

end