class AddIndexToAlbums < ActiveRecord::Migration
  def change
    add_index :albums, :album_title, unique: true
  end
end
