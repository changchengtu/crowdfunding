require 'test_helper'

class UsernoticeTest < ActionMailer::TestCase
  test "context" do
    mail = Usernotice.context
    assert_equal "Context", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
