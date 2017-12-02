class Album < ActiveRecord::Base
    validates :album_title, :album_artist, :release_date, presence: true
    validates :album_title, uniqueness: true
end
