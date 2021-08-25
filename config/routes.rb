Rails.application.routes.draw do
  resources :pictures do
    collection do
    post :confirm
    end
  end
  root "users#new"
  resources :sessions, only: [:new, :create, :destroy]
  #resources :users
  resources :users, only: [:new, :create, :show]
end