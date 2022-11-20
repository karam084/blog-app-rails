Rails.application.routes.draw do
  #devise_for :user_admins

  devise_for :user_admins do
    get '/user_admins/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'users#index'

  resources :users, only: [:index, :show] do
    resources :posts, only: [ :index, :new, :create, :show, :destroy] 
    resources :comments, only: [ :create, :destroy]
    resources :likes, only: [ :create ]
  end
end