Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/profile', to: 'pages#profile'
  get '/coming_soon', to: 'pages#coming_soon'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :edit, :update, :delete] do
    resources :reviews, only: [:index]
    resources :enquiries, only: [:index]
    resources :jobs, only: [:index]
  end
  resources :enquiries, except: [:index, :show]
  resources :reviews, except: [:index, :show]
  resources :jobs, except: [:index, :show]
end
