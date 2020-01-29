class Departamento < ApplicationRecord
    has_many :produtos

    validates :nome, presence: true
end
