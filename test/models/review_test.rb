require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  setup do
    @review = reviews(:one)
    @song = songs(:one)
  end
  test 'should not save empty review' do
    review = Review.new
    review.save
    refute review.valid?
  end
  test 'should save valid review' do
    review = Review.new
    review.reviewer = "Rosabelle Armstead"
    review.rating = 4
    review.review = "Very good"
    review.song = @song
    review.save
    assert review.valid?
  end
  test 'should not save invalid rating' do
    review = Review.new
    review.reviewer = "Rosabelle Armstead"
    review.rating = 24
    review.review = "Very good"
    review.song = @song
    review.save
    refute review.valid?
  end
end
