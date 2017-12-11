require 'test_helper'

class SongsControllerTest < ActionController::TestCase
  setup do
    @song = songs(:one)
    @album = albums(:one)
  end

  test "should get new" do
    get :new, album_id: @album
    assert_response :success
    assert_select 'title', 'Music Library'
    assert_select 'h1', 'New Song'
    assert_select 'h4', @album.album_title
    assert_template layout: 'application'
  end

  test "should create song" do
    assert_difference('Song.count') do
      post :create, song: { album_id: @song.album_id, genre: @song.genre, length: @song.length, song_title: @song.song_title }
    end

    assert_redirected_to song_path(assigns(:song))
  end

  test "should show song" do
    get :show, id: @song
    assert_response :success
    assert_select 'title', 'Music Library'
    assert_select 'h2', @song.song_title
    assert_template layout: 'application'
  end

  test "should get edit" do
    get :edit, id: @song
    assert_response :success
    assert_select 'title', 'Music Library'
    assert_template layout: 'application'
  end

  test "should update song" do
    patch :update, id: @song, song: { album_id: @song.album_id, genre: @song.genre, length: @song.length, song_title: @song.song_title }
    assert_redirected_to song_path(assigns(:song))
  end

  test "should destroy song" do
    assert_difference('Song.count', -1) do
      delete :destroy, id: @song
    end

    assert_redirected_to @song.album
  end
end
