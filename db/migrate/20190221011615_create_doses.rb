class CreateDoses < ActiveRecord::Migration[5.2]
  def change
    create_table :doses do |t|
      t.text :description
      t.references :ingredients, foreign_key: true
      t.references :cocktail, foreign_key: true

      t.timestamps
    end
  end
end
