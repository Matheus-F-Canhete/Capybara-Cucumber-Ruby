Quando('entro no iframe e preencho os campos') do
  visit('https://www.koerich.com.br')
  first('.webchat_closed').click
  within('.webchat_fixed.webchat_opened') do
    fill_in(class: 'input-message', with: "Teste")
  end
end

Quando('entro no modal e verifico o texto') do
  visit('https://www.bing.com/')
  find(".sb_feedback_button.feedback-binded").click
  within('.modal.hlig') do
    assert_text 'Feedback about Bing'
  end
end

Quando('fecho o modal') do
  within('.modal.hlig') do
    click_button('Cancel')
  end
end