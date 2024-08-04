Quando('seleciono com mouse hover') do
  visit("https://www.canva.com/pt_br/sites/modelos/modernos/")

  #verificando antes se o texto a ser validado vai aparecer usando assert_no_text
  assert_no_text('Imóveis')

  first('span', text: "Empresarial").hover

  #verificando que o texto apareceu porque o hover funcionou
  assert_text('Imóveis')

  #clicando na opção com o hover
  find_link(href: "https://www.canva.com/pt_br/solucoes/imobiliarias/").click

  sleep(2)
end