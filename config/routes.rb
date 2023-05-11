Rails.application.routes.draw do
  resources :feeds
  resources :feeds do
    collection do
      post :confirm
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :pictures
    end
end
