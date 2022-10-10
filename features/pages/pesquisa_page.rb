 class PesquisaScreen < SitePrism::Page

     include PesquisaModule

    #url definido no arquivo hooks.rb
     element :campo_pesquisa,                   '.clear-default-value.search-field'
     element :produto_escolhido,                '.product-1006913.purchasable'
     element :button_adicionar_sacola,          '.btn-buy'
     element :carrinho,                         '.icon.icon-basket'
     element :add_carrinho,                     '.btn-buy' , text: "adicionar ao carrinho"
 end