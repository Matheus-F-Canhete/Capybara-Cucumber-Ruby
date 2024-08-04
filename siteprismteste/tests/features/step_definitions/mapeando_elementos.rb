Quando('preencho o formulário') do
  home.load

  home.preencher

  #outro jeito de preencher com pageobjects:

  home.senha.set "Testinha"

  sleep(2)

end