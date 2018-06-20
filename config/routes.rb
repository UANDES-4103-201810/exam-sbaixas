Rails.application.routes.draw do
  resources :orders
  resources :delivery_infos
  devise_for :customers
  get 'home/index'

  resources :pizzas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
