class CreateMetros < ActiveRecord::Migration[5.1]
  def change
    create_table :metros do |t|
      t.references :linha_metro, foreign_key: true
      t.references :empresa, foreign_key: true
      t.integer :qtd_passageiros
      t.date :data_inicio_operacao
      t.date :ultima_revisao

      t.timestamps
    end
  end
end
