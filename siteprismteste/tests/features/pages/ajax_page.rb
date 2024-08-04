class AjaxPage < SitePrism::Page 
  set_url "https://seubarriga.wcaquino.me/login"

  element :senha, '#senha'
  element :botao, '.btn.btn-primary'
  element :mensagem, '.alert.alert-danger'

  def preencher_senha
    wait_until_senha_visible
    senha.set('Testinha')
  end

  def clicar_botao
    wait_until_botao_visible
    botao.click
  end

end