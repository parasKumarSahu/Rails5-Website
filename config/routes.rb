Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  get 'home/product'
  get 'home/overview'
  get 'home/design'
  get 'home/technical'
  get 'home/business'
  get 'home/downloads'
  get 'home/references'
  get 'home/events'
  get 'download_file', to: "home#download_file"
  get 'home/academy'
  get 'contact_us', to: "home#contact_us"
  # For detail  s on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 