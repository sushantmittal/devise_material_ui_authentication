require "test_helper"

class Users::ReferralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:john)
    sign_in(@user)
  end

  test "should get new" do
    get new_user_referrals_path
    assert_response :success
  end

  test "send_email should send referral email" do
    assert_difference "ActionMailer::Base.deliveries.count" do
      params = { user: { email: "mark@example.com" } }
      get send_email_user_referrals_path @org, params: params

      assert_redirected_to root_path
      assert_equal flash[:notice], I18n.t(:success, scope: :referrals, email: params[:user][:email])
    end
  end

  test "send_email should not send referral email if user already exists with that email" do
    assert_no_difference "ActionMailer::Base.deliveries.count" do
      params = { user: { email: users(:alex).email } }
      get send_email_user_referrals_path @org, params: params

      assert_response :success
      assert_equal flash[:alert], I18n.t(:user_already_exists, scope: :referrals, email: params[:user][:email])
    end
  end
end
