class CreateCoupons < ActiveRecord::Migration[5.0]
  def change
    create_table :coupons do |t|
      t.string :code, null: false
      t.decimal :discount, precision: 15, scale: 2

      t.date :valid_until
      t.integer :orders_count, default: 0, null: false
      t.timestamps
    end
    add_index :coupons, :code, unique: true
  end
end
