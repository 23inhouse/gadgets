Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users

  resources :gadgets

  root to: redirect('/users/sign_in')
end
