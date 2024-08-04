Quando('acesso a url de botões') do
  visit('/login')
end

Então('verifico se encontrei os elementos') do
  #all: busca todos os elementos que contenham o all
  page.all('.navbar-brand')
  #find: busca um elemento mapeado
  find('#email')
  #find_by_id: busca pelo id
  find_by_id('senha')
  #find_button: busca um botão
  find_button(class:'btn btn-primary')
  #first: busca o primeiro elemento com o dado mapeado
  first('.btn')
  #find_link: busca pelo link mapeado
  find_link(href: '/cadastro')

  #teste de achar botão pelo que está escrito nele
  find_button(text: 'Entrar')
end