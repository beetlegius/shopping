class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :image_uid, :image_name
      t.integer :order

      t.belongs_to :owner, polymorphic: true, index: true
      t.timestamps
    end
  end
end
