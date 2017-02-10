class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.integer :rating, null: false

      t.belongs_to :order, index: true, foreign_key: true
      t.timestamps
    end
  end
end
