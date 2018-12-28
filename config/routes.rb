Rails.application.routes.draw do
  devise_scope :user do
    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end
  devise_for :users, :skip => [:registrations] 
    as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end

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
  get 'home/user'
  # For detail  s on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 