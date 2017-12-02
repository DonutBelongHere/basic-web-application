require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select 'title', 'Music Library'
    assert_select 'h1', 'Music Library'
    assert_template layout: 'application'
  end
  
  test "should get contact" do
    get :contact
    assert_response :success
    assert_select 'title', 'Music Library'
    assert_select 'h3', 'Contact Us'
    assert_select 'p', 'Please fill out the form to get in touch.'
    assert_template layout: 'application'
  end
  
  test "should post request contact but no email" do
    post :request_contact
    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end
  
  test "should post request contact" do
    post :request_contact, name: "Rosabelle", email: "rosabelle@rosabelle.net", mobile: "07777777777", message: "Hello!"
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end
end
