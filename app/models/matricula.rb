class Matricula < ApplicationRecord
  belongs_to :aluno
  belongs_to :disciplina

  validates :semestre, presence: true
  validates :nota, numericality: { greater_than_or_equal_to: 0, 
            less_than_or_equal_to: 10 }, allow_nil: true
  validates :aluno_id, uniqueness: { scope: [:disciplina_id, :semestre],
            message: "já está matriculado nesta disciplina neste semestre" }
end