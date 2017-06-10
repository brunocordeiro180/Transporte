class CreateItinerarios < ActiveRecord::Migration[5.1]
  def change
    create_table :itinerarios do |t|
      t.references :estacao, foreign_key: true
      t.references :linha, foreign_key: true
      t.integer :ordem

      t.timestamps
    end
  end
end
