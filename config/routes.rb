Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :items do
  	member do
  		patch :complete
  	end
  end
  root 'items#index'
end
