Quando('clico em botões') do
  visit('/')
  #click_button:
  click_button('Entrar')
  #click_on = click_link_or_button
  click_on(class:'navbar-brand')
  #find().click: acha o elemento css e depois clica
  find('a[href="/cadastro"').click
  find('input[value="Cadastrar"]').click
  #right_click: faz o clique com o botão direito
  find('a[href="/login"]').right_click
  #double.click: faz o clique duplo
  find('a[href="/login"]').double_click
  #click_link: seleciona o link que tenha o texto informado
  click_link('Login')

end