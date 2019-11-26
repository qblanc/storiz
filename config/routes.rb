Rails.application.routes.draw do
  # get 'bibles/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :projects do
    resources :bibles, only: [:show]
    resources :scenes, only: [:new, :create]
    resources :characters, only: [:new, :create]
  end
  resources :scenes, only: [:edit, :update, :show, :destroy]
  resources :characters, only: [:edit, :update, :show, :index, :destroy]
end
