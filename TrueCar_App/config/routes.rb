Rails.application.routes.draw do
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

  resources :posts

  resources :followings

  resources :users
  root :to => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
