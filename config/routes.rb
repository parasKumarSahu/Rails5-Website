Rails.application.routes.draw do
  resources :performences
  resources :installations
  resources :manufacturings
  resources :questions
  resources :learns
  resources :quotes
  resources :events
  resources :certifications
  resources :offices
  resources :resources
  resources :decors
  resources :references
  resources :businesses
  resources :overviews
  resources :designs
  resources :products
  resources :families
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  get 'home/product'
  get 'home/overview'
  get 'home/design'
  get 'home/technical'
  get 'home/business'
  get 'home/downloads'
  # For detail  s on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 