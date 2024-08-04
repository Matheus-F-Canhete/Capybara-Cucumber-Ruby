Quando('eu marco um radiobox e checkbox') do
  visit('http://penta.ufrgs.br/edu/forms/tut212.html')

  #checkbox
  find('input[value="futebol"]').click()

  #radiobox só funciona com ID ou nome do campo
  # choose('input[value="masc"]')
  # sleep(3)

end