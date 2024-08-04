Quando('eu uso o teclado') do
  visit('https://www.megajogos.com.br/')
  find('#inputEmail').send_keys(:enter)
end