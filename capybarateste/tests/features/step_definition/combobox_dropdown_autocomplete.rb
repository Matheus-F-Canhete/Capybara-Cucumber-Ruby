Quando('interajo com dropdown e select') do
  visit('https://getbootstrap.com/docs/5.0/forms/select/')
  #clicando em um dropdown
  find('#bd-versions').click
  #selecionando uma das opções [Nesse caso, usei o find pra usar um localizador html e o texto nele]
  find('li', text: 'v5.1.3').click

  #clicando em um select [só funciona com o nome do campo select ou com o id]
  visit('https://www.megajogos.com.br/mega-ranking')
  select'Buraco (Canastra)', from: 'select_games'

   #selecionando pelo css
   find('option[value="/buraco-justificado-mano-a-mano-online/classificacao"]').select_option

end

Quando('preencho o autocomplete') do
  visit('https://www.google.com/')
  find('textarea[title="Pesquisar"]').set'Rio de Janei'
  find('ul', text: "Rio de Janeiro").click
end