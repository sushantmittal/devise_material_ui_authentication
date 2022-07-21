class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  belongs_to :referred_by, class_name: "User", required: false

  before_save :assign_referral_token, if: -> { referral_token.blank? }

  scope :with_email, ->(email) { where(email: email) }
  scope :with_referral_token, ->(referral_token) { where(referral_token: referral_token) }

  private

    def assign_referral_token
      loop do
        self.referral_token = SecureRandom.uuid
      break unless User.with_referral_token(referral_token).exists?
      end
    end
end
