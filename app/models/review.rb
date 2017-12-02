class Review < ActiveRecord::Base
  belongs_to :song
  validates :reviewer, :rating, :review, presence: true
  validates :rating, :inclusion => 1..5
end