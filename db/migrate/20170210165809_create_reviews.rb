class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :author
      t.string :image_uid, :image_name
      t.integer :rating, null: false
      t.string :title
      t.text :comment

      t.belongs_to :product, index: true, foreign_key: true
      t.timestamps
    end
  end
end
