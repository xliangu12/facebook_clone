Rails.application.routes.draw do
  get "home/top" => "home#top"
  resources :feeds do
    collection do
      post :confirm
    end   
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :pictures

end
