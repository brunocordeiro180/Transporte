class CreateItinerarioMetros < ActiveRecord::Migration[5.1]
  def change
    create_table :itinerario_metros do |t|
      t.references :estacao_metro, foreign_key: true
      t.references :linha_metro, foreign_key: true
      t.integer :ordem

      t.timestamps
    end
  end
end
