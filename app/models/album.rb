class Album < ActiveRecord::Base
  # album must have title, artist and release date
  validates :album_title, :album_artist, :release_date, presence: true
  # album title must be unique
  validates :album_title, uniqueness: true
  # album has many songs - if an album is destroyed, its songs will be destroyed
  has_many :songs, dependent: :destroy
end
