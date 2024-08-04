Quando('eu uso um script') do
  visit('https://www.megajogos.com.br/')
  page.execute_script("window.scrollBy(0, 1500)")
  sleep(5)
end