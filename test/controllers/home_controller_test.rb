require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select 'title', 'Music Library'
    assert_select 'h1', 'Music Library'
    assert_template layout: 'application'
  end

end
