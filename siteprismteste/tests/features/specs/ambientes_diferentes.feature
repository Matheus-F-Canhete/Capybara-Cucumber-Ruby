# Para trabalhar com ambientes diferentes em capybara, é preciso seguir as seguintes instruções:

# 1 - Num projeto capybara já existente, criar um arquivo dentro da pasta raiz "tests" chamado "cucumber.yml" e cadastrar ele assim:

#     --- começa com esses 3 traços

#     default: --profile pretty

#     onde default é a variável que o cucumber vai ler com os dados que serão informados em seguida
#     profile é o tipo de informação que será mostrado no teste. Pretty é o padrão e Progress esconde a informação do teste com "..."

#     pretty: --format pretty 
#     progress: --format progress

# 2 - No arquivo 'env.rb', cadastrar as seguinte inforações:

#     #variável que vai receber o valor referente a qual ambiente será utilizado
#     AMBIENTE = ENV['AMBIENTE']

#     #variável que vai concatenar o arquivo yml com o arquivo dos ambientes (que será criado em seguida)
#     CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

# 3 - Na pasta support, criar uma nova pasta chamada "ambientes" e dentro dela criar os arquivos referentes aos ambientes que serão utilizados:
#     ex: homolog.yml, producao.yml

# 4 - Dentro das pastas recém criadas, é só definir ali dentro os valores que se alteram de um ambiente para o outro:
#     ex: se só mudar a url (am caso de mesmo webapp com ambientes diferentes):
#         url_padrao: 'www.definiraurl.com.br'
#     Ps. usar a mesma variável nas duas pastas pois o arquivo vai buscar a mesma informação nos ambientes 

# 5 - No arquivo env, na parte "config.app_host =" preencher da seguinte maneira: "config.app_host = CONFIG['url_padrao']"
#         isso significa que a variavel CONFIG vai receber o valor da variavel url_padrao e utilizar de acordo com o ambiente informado

# 6 - De volta ao arquivo "cucumber.yml", definir as variáveis de cada ambiente da seguinte maneira:
#     homolog: AMBIENTE=homolog
#     producao: AMBIENTE=producao

# 7 - Depois, ainda no arquivo "cucumber.yml" aumentar o valor do campo "default" informando o ambiente da seguinte maneira:
#     default: --profile pretty -p homolog