class CreateEmpresas < ActiveRecord::Migration[5.1]
  def change
    create_table :empresas do |t|
      t.integer :cnpj
      t.string :nome
      t.integer :tel_contato, :limit => 8
      t.integer :qtd_empregados
      t.text :endereco

      t.timestamps
    end
  end
end
