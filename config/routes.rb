Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root "dashboard#show"

  resource :user_referrals, only: [:new], controller: "users/referrals" do
    get :send_email
  end
end
