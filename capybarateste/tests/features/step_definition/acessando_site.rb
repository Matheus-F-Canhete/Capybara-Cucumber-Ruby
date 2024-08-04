Quando('acesso a url') do
  visit('/login')
end

Então('eu verifico se estou na página correta') do
  expect(page).to have_current_path('https://seubarriga.wcaquino.me/login', url: true)
end