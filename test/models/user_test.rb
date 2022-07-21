require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "assign_referral_token before_save callback assign referral token when user created without referral token" do
    user = User.create!(email: "mark@example.com", password: "123456", password_confirmation: "123456")

    assert_not_nil user.referral_token
  end

  test "with_email scope" do
    assert_equal [users(:alex)], User.with_email("alex@example.com")
  end

  test "with_referral_token scope" do
    assert_equal [users(:john)], User.with_referral_token("63bb7410-1bcd-47c2-ae14-5873230910ed")
  end
end
