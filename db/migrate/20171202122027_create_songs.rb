class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.belongs_to :album, index: true, foreign_key: true, null: false
      t.string :song_title, null: false
      t.string :genre
      t.integer :length, null: false

      t.timestamps null: false
    end
  end
end
