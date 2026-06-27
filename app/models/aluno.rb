class Aluno < ApplicationRecord
  has_many :matriculas, dependent: :destroy #Validação para garantir que as matrículas sejam removidas quando um aluno for excluído
  has_many :disciplinas, through: :matriculas #Associação para acessar as disciplinas através das matrículas

  validates :nome, presence: true #Validação para garantir que o nome do aluno seja preenchido
  validates :cpf, presence: true, uniqueness: true, #Validação para garantir que o CPF seja preenchido, seja único e siga o formato correto
            format: { with: /\A\d{11}\z/, message: "deve conter exatamente 11 dígitos numéricos" }
  validates :data_nascimento, presence: true #Validação para garantir que a data de nascimento do aluno seja preenchida

  validate :data_nascimento_no_passado #Validação personalizada para garantir que a data de nascimento seja uma data no passado

  private

  def data_nascimento_no_passado
    if data_nascimento.present? && data_nascimento >= Date.today
      errors.add(:data_nascimento, "deve ser uma data no passado")
    end
  end
end