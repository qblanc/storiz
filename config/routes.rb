Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :projects, only: [:new, :create, :edit, :update, :show, :index, :destroy] do
  #   resources :scenes, [:new, :create, :edit, :update, :show, :index, :destroy]
  #   resources :characters, only: [:new, :create, :edit, :update, :show, :index, :destroy]
  # end
end
