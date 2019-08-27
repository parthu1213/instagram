Rails.application.routes.draw do
  devise_for :user
  get 'home/index'
  root :to =>"home#index"
  resources :users
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
