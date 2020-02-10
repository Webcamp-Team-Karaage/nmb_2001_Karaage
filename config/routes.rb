Rails.application.routes.draw do

<<<<<<< HEAD
  get 'admins/top'
  # 管理者ログイン・サインインのコントローラとして管理者用作成したコントローラを指定
    devise_for :admins, controllers: {
      sessions:      'admins/sessions',
      passwords:     'admins/passwords',
      registrations: 'admins/registrations'
    }
=======

  get 'admin_products/new'
  get 'admin_products/index'
  get 'admin_products/create'
  get 'admin_products/show'
  get 'admin_products/edit'
  get 'admin_products/update'
  get 'new/create'
  get 'new/show'
  get 'new/edit'
  get 'new/update'
>>>>>>> yasuhara
  # 会員ログイン・サインインのコントローラとして会員用作成したコントローラを指定
    devise_for :members, controllers: {
        sessions:      'members/sessions',
        passwords:     'members/passwords',
        registrations: 'members/registrations'
    }

  get 'members/show'
  get 'members/edit'
  get 'members/update'
  # devise_for :members

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "homes#top"

  get 'home/about' => 'homes#about'
  get 'members/:id/delete_me' => 'members#delete_me', as: 'delete_me'
  delete 'cart_products' => 'cart_products#destroy_all'
  get 'members/:id/orders/input' => 'orders#input', as: 'input'
  get 'orders/thanks' => 'orders#thanks'
  get 'admins/top' => 'admins#top'

  resources :members, only: [:show, :edit, :update]
  resources :shipping_addresses, only: [:index, :create, :destroy, :edit, :update]
  resources :cart_products, only: [:index, :create, :update, :destroy]
  resources :orders, only: [:index, :show, :new, :create]
  resources :products, only: [:index, :show]

  resources :admin_members, only: [:index, :show, :edit, :update]
  resources :admin_orders, only: [:index, :show, :update]
  resources :admin_order_products, only: [:update]
  resources :admin_products, only: [:index, :new, :create, :show, :edit, :update]
  resources :admin_genres, only: [:index, :create, :edit, :update]

end
