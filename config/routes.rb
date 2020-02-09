Rails.application.routes.draw do
  devise_for :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#top"

  resources :home, only: [:top, :about]

  resources :members_registrations, only: [:new, :create]
  resources :members_sessions, only: [:new, :create, :destroy]
  resources :members, only: [:show, :delete_me, :edit, :update]
  resources :shipping_addresses, only: [:index, :create, :destroy, :edit, :update]
  resources :cart_products, only: [:index, :create, :update, :destroy, :destroy_all]
  resources :orders, only: [:index, :show, :input, :new, :create, :thanks]
  resources :products, only: [:index, :show]

  resources :admins, only: [:top]
  resources :admins_sessions, only: [:new, :create, :destroy]
  resources :admin_members, only: [:index, :show, :edit, :update]
  resources :admin_orders, only: [:index, :show, :update]
  resources :admin_order_products, only: [:update]
  resources :admin_products, only: [:index, :new, :create, :show, :edit, :update]
  resources :admin_genres, only: [:index, :create, :edit, :update]

end
