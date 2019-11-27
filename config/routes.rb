Rails.application.routes.draw do
  # get 'bibles/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :projects do
    resource :bibles, only: [:show]
    resources :scenes, only: [:new, :create]
    resources :characters, only: [:new, :create]
  end

  resources :moods, only: [:new, :create, :show, :edit, :update] do
    resources :mooditems, only: [:show, :new, :create, :edit, :update, :destroy]
  end
  resources :scenes, only: [:edit, :update, :show, :destroy]
  resources :mooditems, only: [:destroy]
  resources :characters, only: [:edit, :update, :show, :index, :destroy] do
    resources :character_events, only: [:create]
  end
end
