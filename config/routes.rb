Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :scenes, only: [:edit, :update, :destroy]

  resources :characters, only: [:edit, :update, :destroy]

  resources :projects, only: [:new, :create, :edit, :update, :show, :index, :destroy] do
    resources :scenes, [:new, :create, :show, :index]
    resources :characters, only: [:new, :create, :show, :index]
  end
end
