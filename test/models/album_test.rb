require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test 'should not save empty album' do
    album = Album.new
    album.save
    refute album.valid?
  end
  test 'should save valid album' do
    album = Album.new
    album.album_title = "Album"
    album.album_artist = "Album Artist"
    album.release_date = 2017-07-07
    album.save
    assert album.valid?
  end
  test 'should not save duplicate album title' do
    album1 = Album.new
    album1.album_title = "Album"
    album1.album_artist = "Album Artist"
    album1.release_date = 2017-07-07
    album1.save
    assert album1.valid?
    album2 = Album.new
    album2.album_title = "Album"
    album2.album_artist = "Album Artist"
    album2.release_date = 2017-07-07
    album2.save
    refute album2.valid?
  end
end
