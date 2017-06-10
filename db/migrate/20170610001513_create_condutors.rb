class CreateCondutors < ActiveRecord::Migration[5.1]
  def change
    create_table :condutors do |t|
      t.integer :cpf
      t.references :onibus, foreign_key: true
      t.float :salario
      t.date :data_inicio_serv
      t.date :datanasc
      t.references :empresa, foreign_key: true

      t.timestamps
    end
  end
end
