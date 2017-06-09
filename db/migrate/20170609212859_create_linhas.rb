class CreateLinhas < ActiveRecord::Migration[5.1]
  def change
    create_table :linhas do |t|
      t.integer :numero_paradas
      t.integer :passageiros_atendidos
      t.integer :qtd_onibus
      t.float :preco

      t.timestamps
    end
  end
end
