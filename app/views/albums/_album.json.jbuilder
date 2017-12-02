json.extract! album, :id, :album_title, :album_artist, :release_date, :created_at, :updated_at
json.url album_url(album, format: :json)
