Rails.application.routes.draw do
  resources :items, only: [:index]
  resources :users, only: [:show] do
    resources :items, only: [:index, :show, :create]
  end
  # get '/users/:user_id/items', to: 'users#items'

  # get '/users/:user_id/items/:id' to 'users#items'
end
