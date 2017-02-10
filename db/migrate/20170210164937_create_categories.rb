class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :image_uid, :image_name

      t.integer :products_count, default: 0, null: false
      t.string :slug
      t.timestamps
    end
    add_index :categories, :slug, unique: true
  end
end
