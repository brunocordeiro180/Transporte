class CreateCidades < ActiveRecord::Migration[5.1]
  def change
    create_table :cidades do |t|
      t.text :nome
      t.integer :qtd_habitantes
      t.integer :area
      t.integer :qtd_estacoes

      t.timestamps
    end
  end
end
