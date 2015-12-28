require 'test_helper'

class ManageMailerTest < ActionMailer::TestCase
  test "contact" do
    mail = ManageMailer.contact
    assert_equal "Contact", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "new_experience" do
    mail = ManageMailer.new_experience
    assert_equal "New experience", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
