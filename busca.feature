#language: pt

Funcionalidade: Buscar produto
    Sendo um usuário do automationpractice
    Quero buscar um produto
    Para adicioná-lo ao carrinho
@happy
    Cenário: Busca
        Dado que acesso a página inicial
        Quando submeto uma busca por:
            | nomeproduto |  blouse |
        
        Então devo ver o meu produto e adicioná-lo ao carrinho