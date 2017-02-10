Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/index'

  get 'users/create'

  get 'users/new'

  get 'users/following_params'

  get 'followings/index'

  get 'followings/new'

  get 'followings/create'

  get 'posts/edit'

  get 'posts/index'

  get 'posts/new'

  get 'posts/show'

  get 'posts/create'

  get 'home/index'

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  #root :to => "users#new"
  resources :users
  resources :sessions

  resources :posts

  resources :followings


  root :to => 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
