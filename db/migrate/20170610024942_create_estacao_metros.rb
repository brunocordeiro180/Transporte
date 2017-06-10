class CreateEstacaoMetros < ActiveRecord::Migration[5.1]
  def change
    create_table :estacao_metros do |t|
      t.string :nome
      t.references :cidade, foreign_key: true

      t.timestamps
    end
  end
end
