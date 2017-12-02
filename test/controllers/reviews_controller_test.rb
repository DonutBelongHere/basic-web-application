require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
  setup do
    @review = reviews(:one)
    @song = songs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reviews)
  end

  test "should get new" do
    get :new, song_id: @song
    assert_response :success
  end

  test "should create review" do
    assert_difference('Review.count') do
      post :create, review: { rating: @review.rating, review: @review.review, reviewer: @review.reviewer, song_id: @review.song_id }
    end

    assert_redirected_to review_path(assigns(:review))
  end

  test "should show review" do
    get :show, id: @review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @review
    assert_response :success
  end

  test "should update review" do
    patch :update, id: @review, review: { rating: @review.rating, review: @review.review, reviewer: @review.reviewer, song_id: @review.song_id }
    assert_redirected_to review_path(assigns(:review))
  end

  test "should destroy review" do
    assert_difference('Review.count', -1) do
      delete :destroy, id: @review
    end

    assert_redirected_to reviews_path
  end
end
