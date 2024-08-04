Quando('eu entro na janela e verifico a mensagem') do
  visit('https://openai.com/index/chatgpt/')
  #janela recebe uma janela que foi aberta pelo link
  janela = window_opened_by do
    click_link "Try ChatGPT"
    sleep(2)
  end
  #muda de foco para a janela aberta
  within_window janela do 
    expect(current_url).to eql "https://chatgpt.com/"
    @mensagem = find('.text-sm')
    expect(@mensagem.text).to eql('By messaging ChatGPT, you agree to our Terms and have read our Privacy Policy.')
  end

  #uma opção para navegar entre abas
  switch_to_window windows.first
  janela.close
  sleep(2)

end

Quando('eu entro no alert e verifico \/ faço a ação') do
  visit('https://sweetalert2.github.io/')
  #confirmando um alert
  click_button('Show normal alert')
  sleep(2)
  page.accept_alert
  sleep(2)

  #fechando o alert
  find('[aria-label="Try me! Example: A dialog with three buttons"]').click
  sleep(2)
  click_button('Cancel')
  sleep(2)

  #alert com prompt
  find('[aria-label="Try me! Example: AJAX request"]').click
  sleep(2)
  find('#swal2-input').set('Testinha')
  sleep(2)
  click_button('Look up')
  sleep(2)

end