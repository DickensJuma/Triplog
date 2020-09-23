Rails.application.routes.draw do

  root 'fleets#index'
  resources :fleets, only: [:index, :create] do
    resources :mileages, only: [:create]
  end

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :sessions, only: [:create, :new, :destroy]

  get 'login', to: 'sessions#new'

  delete 'logout', to: 'sessions#destroy'
  resources :users
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
