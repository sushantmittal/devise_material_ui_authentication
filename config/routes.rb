Rails.application.routes.draw do
  devise_for :users

  root "dashboard#show"
end
