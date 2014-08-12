Rails.application.routes.draw do
  devise_for :users

  resources :gadgets

  root to: redirect('/users/sign_in')
end
