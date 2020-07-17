Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :characters, only: %i[index show new create destroy] do
    resources :bookings, only: [ :new, :create, :show ] do 
      post :accept
      post :decline
    end
  end
  resources :bookings, only: [ :destroy, :index] do
    
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
