class Disciplina < ApplicationRecord
  has_many :matriculas, dependent: :destroy
  has_many :alunos, through: :matriculas

  validates :nome, presence: true
  validates :codigo, presence: true, uniqueness: true
  validates :carga_horaria, presence: true, numericality: { only_integer: true, greater_than: 0 }
end