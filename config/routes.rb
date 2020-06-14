Rails.application.routes.draw do
  get 'access/new'
  get 'access/create'
  get 'access/destroy'
  get 'admin/index'
  resources :users
  resources :carts
  resources :lineitems
  resources :orders
  # resources :access
  get 'shopper/index'
  # get '/', to: 'shopper#index'
  root "shopper#index"  # Better to do this short form rather than above, because you need root

  get 'shopper', to: 'shopper#index'
  get 'admin', to: 'admin#index'
  get 'login', to: "access#new"

  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
