Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'items#index'
  resources :items, only: [:index, :new, :create] do
    resources :reviews, only: :create
  end
  resources :dog_items, only: [:index, :show]
end