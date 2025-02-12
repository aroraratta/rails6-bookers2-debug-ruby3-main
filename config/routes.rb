Rails.application.routes.draw do
  get 'relationships/followings'
  get 'relationships/followers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end

  root to: 'homes#top'
  get "home/about"=>"homes#about"
  get "search" => "searches#search"
  get "tag_searches/search" => "tag_searches#search"

  resources :books, only: [:index, :show, :edit, :create, :destroy, :update] do
    resource :favorite, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:index ,:show ,:edit ,:update] do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
    get "search" => "users#search"
  end
  resources :messages, only: [:create]
  resources :rooms, only: [:create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :notification, only: [:update]

  resources :groups, only: [:new, :index, :show, :create, :edit, :update] do
    resource :group_users, only: [:create, :destroy]
    get "new_mail" => "groups#new_mail"
    get "send/mail" => "groups#send_mail"
  end

end