class Review < ActiveRecord::Base
  # reviews must belong to a song
  belongs_to :song
  # review must have reviewer, rating and review
  validates :reviewer, :rating, :review, presence: true
  # review rating must be an integer between 1 and 5
  validates :rating, :inclusion => 1..5, numericality: {only_integer: true}
end