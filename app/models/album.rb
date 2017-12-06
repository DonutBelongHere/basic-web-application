class Album < ActiveRecord::Base
    validates :album_title, :album_artist, :release_date, presence: true
    validates :album_title, uniqueness: true
    has_many :songs, dependent: :restrict_with_error
end
