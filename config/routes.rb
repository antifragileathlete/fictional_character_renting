Rails.application.routes.draw do
  devise_for :users
  root to: 'characters#index'
  resources :characters, only: %i[index show new create destroy] do
    resources :bookings, only: [ :new, :create, :show ]
  end
  resources :bookings, only: [ :destroy, :index]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
