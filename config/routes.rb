Rails.application.routes.draw do
  get 'comments/create'

  post 'comments/create/:post_id' => "comments#create"

  resources :likes
  devise_for :users
  root "posts#index"
  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
