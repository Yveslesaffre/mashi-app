Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'orders/edit'
  get 'orders/index'
  get 'orders/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "home#index"
  root to: 'pages#home'
  resources :products
  resources :orders

  resources :addresses




end
