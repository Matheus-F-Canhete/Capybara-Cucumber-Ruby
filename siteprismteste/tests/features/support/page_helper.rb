#Esse comando vai fazer não ser preciso instanciar mais todas as classes nos steps pois irá pegar todas as classes nos arquivos que terminam com "page.rb"
Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }

#aqui é só colocar a instancia que seria criada para cada página no arquivo _page.rb e não precisar mais instanciar no arquivo e sim usar o comando home.
module PageObjects
  def home
    @mapeando ||=  MapeandoElementosPage.new
  end 
end
