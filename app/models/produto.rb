class Produto < ApplicationRecord
    validates :nome, presence: true
    validates :descricao, presence: true
    validates :preco, presence: true
    validates :quantidade, presence: true
    validates :descricao, length: { minimum: 15 }
end
