class CreateDisciplinas < ActiveRecord::Migration[8.1]
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.string :codigo
      t.integer :carga_horaria

      t.timestamps
    end
  end
end
