class CreateCobradors < ActiveRecord::Migration[5.1]
  def change
    create_table :cobradors do |t|
      t.integer :cpf
      t.references :onibus, foreign_key: true
      t.date :salario
      t.date :data_inicio_ser
      t.date :datanasc
      t.references :empresa, foreign_key: true

      t.timestamps
    end
  end
end
