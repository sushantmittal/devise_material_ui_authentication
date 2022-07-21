require "test_helper"

class Users::RegistrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:john)
  end

  test "should create user with the referrer id if referral_token is present" do
    assert_difference "User.count" do
      params = { user: { email: "mark@example.com", password: "123456", password_confirmation: "123456", referral_token: @user.referral_token } }
      post user_registration_path params: params
    end

    assert_redirected_to root_path
    assert_equal flash[:notice], "Welcome! You have signed up successfully."

    created_user = User.find_by_email("mark@example.com")
    assert_equal @user.id, created_user.referred_by_id
  end

  test "should create user without referrer id if referral_token not present" do
    assert_difference "User.count" do
      params = { user: { email: "mark@example.com", password: "123456", password_confirmation: "123456" } }
      post user_registration_path params: params
    end

    assert_redirected_to root_path
    assert_equal flash[:notice], "Welcome! You have signed up successfully."

    created_user = User.find_by_email("mark@example.com")
    assert_nil created_user.referred_by_id
  end
end
