class Users::ReferralsController < ApplicationController
  def new
  end

  def send_email
    if (User.with_email(params[:user][:email]).exists?)
      flash[:alert] = t(:user_already_exists, scope: :referrals, email: params[:user][:email])

      render :new
    else
      Mailer.send_referral_email(current_user, params[:user][:email]).deliver_now

      redirect_to root_path, notice: t(:success, scope: :referrals, email: params[:user][:email])
    end
  end
end
