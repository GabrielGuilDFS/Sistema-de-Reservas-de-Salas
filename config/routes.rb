Rails.application.routes.draw do
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

  get "up" => "rails/health#show", as: :rails_health_check
end
