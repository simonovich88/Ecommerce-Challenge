class CreateVariations < ActiveRecord::Migration[6.0]
  def change
    create_table :variations do |t|
      t.references :product, null: false, foreign_key: true
      t.references :size, null: false, foreign_key: true
      t.references :color, null: false, foreign_key: true
      t.integer :stock
      t.integer :price

      t.timestamps
    end
  end
end
