Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  patch '/reservations/:id', to: 'reservations#accept', as: 'accept'
  patch '/reservations/:id', to: 'reservations#decline', as: 'decline'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :edit, :update]
  resources :places do
    resources :reservations, only: [ :create ]
  end
  resources :reservations, only: [] do
    member do
      patch :accept
      patch :decline
    end
  end
