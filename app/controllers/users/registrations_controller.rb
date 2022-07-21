class Users::RegistrationsController < Devise::RegistrationsController
  protected

    def build_resource(hash = {})
      super

      assign_referred_by
    end

    def assign_referred_by
      return unless (referral_token = params[:referral_token] || params[:user].try(:[], :referral_token)).present?

      referrer = User.with_referral_token(referral_token).first
      resource.referred_by = referrer
    end
end
