class MapeandoElementosPage < SitePrism::Page
  set_url 'https://www.megajogos.com.br/'

  #assim mapeamos um elemento da página e o definimos como o ex: "email" e quando precisar usar é só chamar "email" que já vai selecionar o campo
  element :email, '#inputEmail'
  element :senha, "#inputPassword"

  #assim se declara um método que é um bloco de código que define uma ação dentro da página usando os elementos mapeados
  def preencher
    email.set 'Teste'
  end
end