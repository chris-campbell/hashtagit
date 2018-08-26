Rails.application.routes.draw do
    resources :queries
  get 'pages/apiquery' => 'pages#apiquery'
  root 'pages#home'
  get 'pages/dashboard' => 'pages#dashboard'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
end
