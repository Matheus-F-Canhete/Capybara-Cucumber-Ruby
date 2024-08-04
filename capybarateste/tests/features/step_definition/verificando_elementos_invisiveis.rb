Quando('clico em um botão') do
  visit('/')
  find('#senha').set('TesteTestinha')
  click_button('Entrar')
end

Entao('verifico se o texto desapareceu na tela com sucesso') do
   #comprovando que o elemento estava lá antes
   #usando assert_text
   assert_text "Email é um campo obrigatório"
  
   #usando has_text?
   page.has_text?('Email é um campo obrigatório')
 
   #usando have_text
   have_text('Email é um campo obrigatório')
   
   #E clico no título do site
   click_on(class:'navbar-brand')
   
   #comprovando que o elemento desapareceu
   #usando assert_no_text
   assert_no_text('Email é um campo obrigatório')

   #usando o has_no_text
   has_no_text?('Email é um campo obrigatório')
end