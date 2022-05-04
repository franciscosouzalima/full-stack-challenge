# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root to: 'lends#index'

  resources :lends
  resources :books
  devise_for :users

  match '/users',   to: 'users#index',   via: 'get'

  post      '/users',          to: 'users#create'
  get       '/users/new',      to: 'users#new'
  get       '/users/:id/edit', to: 'users#edit'
  get       '/users/:id',      to: 'users#show'
  patch     '/users/:id',      to: 'users#update'
  delete    '/users/:id',      to: 'users#destroy'

  devise_scope :user do
    authenticated :user do
      root 'books#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
