require 'test_helper'

class SongTest < ActiveSupport::TestCase
  setup do
    @song = songs(:one)
    @album = albums(:one)
  end
  test 'should not save empty song' do
    song = Song.new
    song.save
    refute song.valid?
  end
  test 'should save valid song' do
    song = Song.new
    song.song_title = 'Song'
    song.album = @album
    song.genre = 'Pop'
    song.length = 3
    assert song.valid?
  end
end
