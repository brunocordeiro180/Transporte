class CreateLinhaMetros < ActiveRecord::Migration[5.1]
  def change
    create_table :linha_metros do |t|
      t.integer :numero_paradas
      t.string :cor
      t.string :passageiros_atendidos
      t.string :qtd_trans

      t.timestamps
    end
  end
end
