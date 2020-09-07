Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items
  root 'items#index'
<<<<<<< Updated upstream
=======
  resources :items, only: [:index, :new, :create]
  resources :dog_items, only: [:index, :show]
>>>>>>> Stashed changes
end
