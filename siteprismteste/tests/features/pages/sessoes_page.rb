#primeiro é preciso mapear os elementos da sessão
class Sessao < SitePrism::Section
  element :venda_na_amazon, 'a[href="/gp/browse.html?node=17877554011&ld=ASBRSOA_retail_sell_header_t1&ref_=nav_cs_sell"]'
  element :ofertas, 'a[href="/deals?ref_=nav_cs_gb"]'
end

#depois é criada uma page para mapear a sessão da página e utilizar os elementos
class Pagina < SitePrism::Page
  set_url 'https://www.amazon.com.br/'
  section :navbar, Sessao, '#nav-main'
end