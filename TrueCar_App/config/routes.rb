Rails.application.routes.draw do
  get 'posts/edit'

  get 'posts/index'

  get 'posts/new'

  get 'posts/show'

  get 'home/index'

  resources :posts
  root :to => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
