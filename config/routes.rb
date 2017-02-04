Rails.application.routes.draw do
  root to: 'posts#index'
  resources :users do
    resources :posts, only: [:create, :destroy]
  end

  resources :sessions, only: [:new, :create, :destroy]

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
