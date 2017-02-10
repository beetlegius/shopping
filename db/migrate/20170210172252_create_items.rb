class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.decimal :unit_price, precision: 15, scale: 2
      t.integer :quantity

      t.belongs_to :order, index: true, foreign_key: true
      t.belongs_to :product, foreign_key: true
      t.timestamps
    end
  end
end
