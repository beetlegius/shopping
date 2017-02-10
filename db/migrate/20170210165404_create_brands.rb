class CreateBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :image_uid, :image_name

      t.integer :products_count, default: 0, null: false
      t.string :slug
      t.timestamps
    end
    add_index :brands, :slug, unique: true
  end
end
