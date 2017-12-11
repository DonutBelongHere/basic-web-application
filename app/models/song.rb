class Song < ActiveRecord::Base
  # songs must belong to an album
  belongs_to :album
  # song must have title and length, genre isn't always necessary
  validates :song_title, :length, presence: true
  # song has many reviews - if a song is destroyed, its reviews will be destroyed
  has_many :reviews, dependent: :destroy
end
