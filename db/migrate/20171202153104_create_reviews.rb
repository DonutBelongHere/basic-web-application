class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :song, index: true, foreign_key: true, null: false
      t.string :reviewer, null: false
      t.integer :rating, null: false
      t.text :review, null: false

      t.timestamps null: false
    end
  end
end
