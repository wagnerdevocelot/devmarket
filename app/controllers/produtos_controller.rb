class ProdutosController < ApplicationController

    def index
        @produtos = Produto.order(name: :desc).limit 6
        @produto_com_desconto = Produto.order(:preco).limit 1
    end

    def create
        valores = params.require(:produto).permit(:nome, :descricao, :preco, :quantidade)
        @produto = Produto.new valores
        if @produto.save
            flash[:notice] = "Produto salvo com sucesso!"
            redirect_to root_path
        else
            render :new
        end
    end

    def new
        @produto = Produto.new
    end

    def destroy
        id = params[:id]
        @produto = Produto.destroy id
        if @produto.destroy
            flash[:notice] = "Produto deletado com sucesso!"
            redirect_to root_path
        else
            render :index
        end
    end

    def busca
        @nome = params[:nome]
        @produtos = Produto.where "nome like ?", "%#{@nome}%"

    end
end
