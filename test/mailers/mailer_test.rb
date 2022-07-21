require 'test_helper'

class MailerTest < ActionMailer::TestCase
  def test_send_referral_email
    referrer = users(:john)
    Mailer.send_referral_email(referrer, "mark@example.com").deliver_now
    email = ActionMailer::Base.deliveries.last

    assert_equal I18n.t(:subject, scope: [:mailer, :send_referral_email]), email.subject
    assert_equal ["mark@example.com"], email.to

    assert_includes email.encoded, "Hello mark@example.com!"
    assert_includes email.encoded, I18n.t(:referred_you, scope: [:mailer, :send_referral_email], email: referrer.email)
    assert_includes email.encoded, "http://test.com/users/sign_up?referral_token=#{referrer.referral_token}"
  end
end
