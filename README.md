
# DevMarket
DevMaket é uma plataforma de produtos voltados a comunidade desenvolvedora

##  Como rodar localmente
1. Clone ou de um fork através do git ou baixe o pacote compactado
2. Instale as dependências usando o comando`bundle install`
3. Rode no terminal `rails db:create db:migrate` para criar o bando de dados e rodar as migrações.
4. Inicie o servidor com o comando `rails s`. A aplicação irá rodar na porta http://localhost:3000/ 
5. Vá até http://localhost:3000/ no seu browser e cadastre produtos e suas categorias

## User Stories
- Usuário pode cadastrar produtos
- Usuário pode cadastrar categorias

## Features
- Cadastro
  - Produtos cadastrados estarão visíveis na página inicial.
  - Produtos não podem ter campos em branco.
  - Categorias não podem ter campo em branco.
  - Descrição do produto deve ser detalhada, tendo no mínimo 15 caracteres.
 - Página inicial
	  - Deve ser possível fazer a busca dos produtos.
	  - Página inicial deve mostrar produto com o menor preço em uma área de desconto.
	  - Produtos devem ser mostrados em ordem decrescente com um limite de 6 produtos.
- Página de categorias
	 - Página de categorias deve conter link para visualizar todos os produtos relacionados a categoria.
 
  
  ## Features futuras
- Cadastro de usuário com autenticação e autorização
- Comentários dos produtos
- Likes

## Dependências
- Ruby
- Rails
- Twitter-Bootstrap
- i18n
- sqlite3

## Como é a aplicação


![](https://miro.medium.com/max/1363/1*00E7txt10IAKUAZ30mMjQQ.png)





