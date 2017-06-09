class CreateLinhaCartaos < ActiveRecord::Migration[5.1]
  def change
    create_table :linha_cartaos do |t|
      t.references :cartao, foreign_key: true
      t.references :linha, foreign_key: true

      t.timestamps
    end
  end
end
