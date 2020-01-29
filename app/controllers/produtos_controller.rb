class ProdutosController < ApplicationController

    before_action :set_produto, only: [:edit, :update, :destroy]

    def index
        @produtos = Produto.order(name: :desc).limit 6
        @produto_com_desconto = Produto.order(:preco).limit 1
    end

    def create
        @produto = Produto.new produto_params
        set_departamentos
        if @produto.save
            flash[:notice] = "Produto salvo com sucesso!"
            redirect_to root_path
        else
            set_departamentos
            render :new
        end
    end

    def new
        @produto = Produto.new
        set_departamentos
    end

    def destroy
        @produto.destroy
        if @produto.destroy
            flash[:notice] = "Produto deletado com sucesso!"
            redirect_to root_path
        else
            render :index
        end
    end

    def edit
        set_departamentos   
        render :edit     
    end

    def update
        if @produto.update produto_params
            redirect_to root_path
            flash[:notice] = "Editado com sucesso!"
        else
            set_departamentos 
            render :edit
        end
    end

    def busca
        @nome = params[:nome]
        @produtos = Produto.where "nome like ?", "%#{@nome}%"
    end

    def produto_params
        params.require(:produto).permit(:nome, :descricao, :preco, :quantidade, :departamento_id)
    end

    def set_produto
        @produto = Produto.find(params[:id])
    end

    def set_departamentos
        @departamentos = Departamento.all
    end
end
