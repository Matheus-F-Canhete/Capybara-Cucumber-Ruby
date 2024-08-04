Quando('acesso a url') do
  @home = PaginaInicial.new
  @home.load
end

Então('verifico se estou na página inicial') do
  expect(page).to have_current_path('https://www.megajogos.com.br/', url: true)
end