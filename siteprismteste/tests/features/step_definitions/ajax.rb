Quando('clico no botão') do
  @ajax = AjaxPage.new
  @ajax.load
  @ajax.preencher_senha
  @ajax.clicar_botao
end

#outro jeito de fazer a mesma coisa mas é mais fácil criar um método e trabalhar com ele:
Então('verifico se apareceu') do
  @ajax.wait_until_mensagem_visible
  expect(@ajax.mensagem.text).to eql 'Email é um campo obrigatório'
end