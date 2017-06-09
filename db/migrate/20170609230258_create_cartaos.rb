class CreateCartaos < ActiveRecord::Migration[5.1]
  def change
    create_table :cartaos do |t|
      t.references :usuario, foreign_key: true
      t.float :saldo
      t.date :data_cadastro
      t.date :data_vencimento

      t.timestamps
    end
  end
end
