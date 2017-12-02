require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "should return contact email" do
    mail = ContactMailer.contact_email("rosabelle@rosabelle.net", "Rosabelle Armstead", "07777777777", @message = "Hi!")
    assert_equal ['info@musiclibrary.com'], mail.to
    assert_equal ['info@musiclibrary.com'], mail.from
  end
end
