Rails.application.routes.draw do
<

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
  root to: "home#top"

  get 'home/top' => 'homes#top'
  get 'home/about' => 'homes#about'
  get 'members/:id/delete_me' => 'members#delete_me'
  delete 'cart_products' => 'cart_products#destroy_all'
  get 'members/:id/orders/input' => 'orders#input'
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
