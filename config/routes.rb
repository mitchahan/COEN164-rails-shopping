Rails.application.routes.draw do
  resources :carts
  resources :lineitems
  resources :orders
  get 'shopper/index'
  # get '/', to: 'shopper#index'
  root "shopper#index"  # Better to do this short form rather than above, because you need root

  get 'shopper', to: 'shopper#index'

  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
