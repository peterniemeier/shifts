Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :new]
  resource :session, only: [:create, :new, :destroy]
  resources :shifts, only: [:create, :new, :update, :index, :destroy]
  root to: "sessions#new"
end
