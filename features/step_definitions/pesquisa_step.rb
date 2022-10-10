Dado('que pesquiso pelo produto {string}') do |string|
  @pesquisa.pesquisar_produto string
end

Então('adiciono o produto a sacola') do
  @pesquisa.escolher_produto
end

Então('valido se o produto escolhido esta correto dentro do carrinho {string}') do |string|
  expect(page).to have_content(string, wait: 30)
end