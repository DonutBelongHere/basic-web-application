class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :album_title, null: false
      t.string :album_artist, null: false
      t.date :release_date, null: false

      t.timestamps null: false
    end
  end
end
