class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description, :body
      t.decimal :price, :promotional_price, precision: 15, scale: 2

      t.belongs_to :brand, index: true, foreign_key: true
      t.belongs_to :category, index: true, foreign_key: true
      t.string :slug
      t.timestamps
    end
    add_index :products, :slug, unique: true
  end
end
