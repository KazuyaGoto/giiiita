Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'hello#index'
  patch 'tweets/:id' => 'tweets#update'
  get 'tweets/:id/edit' => 'tweets#edit', as:'edit_tweet'
  get 'hello/index' => 'hello#index'
  get 'posts/index_iPhone' => 'posts_iPhone'
  get 'posts/index_web' => 'posts_web'
  get 'posts/index_game' => 'posts_game'
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
end
