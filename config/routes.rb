Rails.application.routes.draw do

  resources :queries
  root 'pages#home'
  get 'pages/test' => 'pages#test'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end
