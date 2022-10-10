module PesquisaModule
        
  #metodo para selecionar os facilities dentro da busca de unidade
  def pesquisar_produto(produto)
    campo_pesquisa.send_keys produto
    click_button "Buscar"
    wait_until_produto_escolhido_visible
    produto_escolhido.click
  end

  def escolher_produto
    wait_until_add_carrinho_visible
    click_button "adicionar ao carrinho"
    carrinho.click
  end
end  