class Users::ReferralsController < ApplicationController
  def new
  end

  def send_email
    if (User.with_email(params[:user][:email]).exists?)
      flash[:alert] = "User with email '#{params[:user][:email]}' already exists."

      render :new
    else
      Mailer.send_referral_email(current_user, params[:user][:email]).deliver_now

      redirect_to root_path, notice: "Sent referral email to '#{params[:user][:email]}'."
    end
  end
end
