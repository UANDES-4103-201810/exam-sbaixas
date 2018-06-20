Rails.application.routes.draw do
  resources :recipes
  resources :orders
  resources :delivery_infos
  devise_for :customers
  get 'home/index'
  post 'cart/add_to_cart'
  get 'cart/show_cart'

  resources :pizzas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
