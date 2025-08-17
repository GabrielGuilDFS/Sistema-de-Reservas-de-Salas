Rails.application.routes.draw do
  get "reservations/index"
  get "reservations/show"
  get "reservations/new"
  get "reservations/edit"
  devise_for :users

  authenticated :user do
    root to: "rooms#index", as: :authenticated_root
  end

  unauthenticated :user do
    root to: "devise/sessions#new", as: :unauthenticated_root
  end

  devise_scope :user do
    root "devise/sessions#new" 
  end
  
  resources :users, only: [:new,:create]
  resources :rooms
  resources :reservations

  get "up" => "rails/health#show", as: :rails_health_check
end
