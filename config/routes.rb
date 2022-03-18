Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show]
  get '/my_profile', to: 'users#my_profile', as: 'my_profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :trees do
    resources :adoptions, except: [:new, :destroy]
  end

  resources :adoptions, only: [:destroy]

  resources :adoptions, only: [] do
    resources :reviews, only: [:create]
  end
end
