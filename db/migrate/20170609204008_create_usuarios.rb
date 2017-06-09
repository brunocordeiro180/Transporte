class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios, id: false do |t|
      t.integer :cpf, null: false
      t.date :datanasc
      t.text :profissao
      t.text :endereco
      t.string :sexo

      t.timestamps
    end
    execute %Q{ ALTER TABLE "usuarios" ADD PRIMARY KEY ("cpf"); }
  end
end
