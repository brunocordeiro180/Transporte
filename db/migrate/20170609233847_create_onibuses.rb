class CreateOnibuses < ActiveRecord::Migration[5.1]
  def change
    create_table :onibuses do |t|
      t.date :data_fabricacao
      t.integer :qtd_passageiros
      t.date :ultima_revisao
      t.references :empresa, foreign_key: true
      t.references :linha, foreign_key: true

      t.timestamps
    end
  end
end
