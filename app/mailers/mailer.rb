class Mailer < ActionMailer::Base
  def send_referral_email(referrer, referred_to_email)
    @referrer = referrer
    @referred_to_email = referred_to_email

    mail subject: "Invitation from Directshifts Assessment",
         to: referred_to_email,
         from: default_params[:from],
         reply_to: default_params[:from]
  end
end