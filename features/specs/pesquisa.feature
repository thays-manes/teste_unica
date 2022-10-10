#language: pt
#utf-8

Funcionalidade: Pesquisar um produto e adicionar no carrinho

    @Adicionar_produto_carrinho
    Cenário: Pesquisa de um produto e adicionar ao carrinho
        Dado que pesquiso pelo produto "Toalha de banho"
        Quando adiciono o produto a sacola
        Então valido se o produto escolhido esta correto dentro do carrinho "Toalha de Banho Buddemeyer Bulgary - Gramatura: 450g/m²"