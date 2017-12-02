class Song < ActiveRecord::Base
  belongs_to :album
  validates :song_title, :length, presence: true
  has_many :reviews, dependent: :destroy
end
