class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :status
      t.string :first_name, :last_name, :address, :city, :zip_code, :phone

      t.integer :items_count, :experiences_count, default: 0, null: false
      t.belongs_to :coupon, foreign_key: true
      t.timestamps
    end
  end
end
