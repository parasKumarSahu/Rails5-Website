Rails.application.routes.draw do
  resources :businesses
  resources :technicals
  resources :overviews
  resources :designs
  resources :products
  resources :families
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  # For detail  s on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 