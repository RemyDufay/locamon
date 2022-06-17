Rails.application.routes.draw do
  get 'catches/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pokemons

  resources :users, only: []  do

    resources :catches, only: [:show]

  end



end
